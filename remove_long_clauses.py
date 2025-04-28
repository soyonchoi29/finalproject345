import os
import random
from pysmt.smtlib.parser import SmtLibParser
from pysmt.smtlib.script import SmtLibCommand, SmtLibScript, evaluate_command
from pysmt.smtlib.solver import SmtLibSolver
from pysmt.shortcuts import *
from pysmt.typing import *
import argparse
import subprocess


def load_smt2_script(file_path):
    """
    Loads an .smt2 script from a file path.
    """
    reset_env()
    parser = SmtLibParser()
    return parser.get_script_fname(file_path)


def remove_random_asserts(script: SmtLibScript, num_to_remove: int, verbose: bool = False, seed: int = 42):
    """
    Removes random assertions from a given script.
    """
    assert_cmds = [cmd for cmd in script.commands if cmd.name == "assert"]
    non_assert_cmds = [cmd for cmd in script.commands if cmd.name != "assert"]

    if num_to_remove >= len(assert_cmds):
        print("Requested more assertions to remove than available. Skipping.")
        return script

    random.seed(seed)
    keep_indices = sorted(random.sample(range(len(assert_cmds)), len(assert_cmds) - num_to_remove))
    kept_asserts = [assert_cmds[i] for i in keep_indices]

    new_script = SmtLibScript()
    for cmd in non_assert_cmds + kept_asserts:
        new_script.add_command(cmd)
    return new_script


def count_literals(formula):
    """
    Counts the number of literals (basic variables or comparisons) in a formula.
    """
    if formula.is_literal():
        return 1
    else:
        return sum(count_literals(child) for child in formula.args())


def remove_asserts_with_more_than_n_literals(script: SmtLibScript, max_literals: int, verbose: bool = False):
    """
    Removes assertions that have more than 'max_literals' literals.
    """
    kept_commands = []

    for cmd in script.commands:
        if cmd.name == "assert":
            assertion_formula = cmd.args[0]
            num_literals = count_literals(assertion_formula)
            if verbose:
                print(f"Assertion with {num_literals} literals: {assertion_formula.serialize()}")
            if num_literals <= max_literals:
                kept_commands.append(cmd)
            else:
                if verbose:
                    print(f"Removed assertion with {num_literals} literals.")
        else:
            kept_commands.append(cmd)

    new_script = SmtLibScript()
    for cmd in kept_commands:
        new_script.add_command(cmd)
    return new_script


def write_smt2_script(script: SmtLibScript, output_path: str):
    """
    Writes SmtLibScript to a file.
    """
    script.to_file(output_path)


def validate_with_z3(file_path):
    """
    Validates the SmtLibScript found in the provided file with a Z3 solver.
    """
    script = load_smt2_script(file_path)
    with SmtLibSolver("z3") as solver:
        cmds = script.commands
        for cmd in cmds:
            evaluate_command(cmd, solver)

        try:
            result = solver.solve()
            if result:
                print("SAT with Z3.")
                return True
            else:
                print("UNSAT with Z3.")
                return True
        except Exception as e:
            print("Z3 solver encountered an error.")
            print(e)
            return False


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--input-file", type=str, required=True, help="Path to the original SMT-LIB file")
    parser.add_argument("--output-file", type=str, default="./outputs/output.smt2", help="Path to save the modified file")
    parser.add_argument("--remove", type=int, default=0, help="Number of assertions to remove randomly")
    parser.add_argument("--max-literals", type=int, default=None, help="Remove assertions with more than N literals")
    parser.add_argument("--verbose", action="store_true", help="Print debugging information")
    args = parser.parse_args()

    print(f"Loading: {args.input_file}")
    script = load_smt2_script(args.input_file)

    if args.max_literals is not None:
        print(f"Removing assertions with more than {args.max_literals} literals...")
        script = remove_asserts_with_more_than_n_literals(script, args.max_literals, verbose=args.verbose)

    if args.remove > 0:
        print(f"Randomly removing {args.remove} assertions...")
        script = remove_random_asserts(script, args.remove, verbose=args.verbose)

    print(f"Writing new file to: {args.output_file}")
    write_smt2_script(script, args.output_file)

    if validate_with_z3(args.output_file):
        print("Output file is valid (Z3 check passed).")
    else:
        print("Output file is invalid (Z3 returned errors).")


if __name__ == "__main__":
    main()

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
    :param file_path: path to file
    """

    reset_env()
    parser = SmtLibParser()
    return parser.get_script_fname(file_path)


def remove_random_asserts(script: SmtLibScript, num_to_remove: int, verbose: bool = False, seed: int = 42):
    """
    Removes random assertions from a given script.
    :param script: SmtLibScript instance.
    :param num_to_remove: Number of assertions to remove.
    :param verbose: Toggles debugging statements.
    :param seed: Seed for PRNG that chooses assertions to remove.
    """

    assert_cmds = [cmd for cmd in script.commands if cmd.name == "assert"]
    if verbose:
        print("Initial assertions: ", assert_cmds)

    non_assert_cmds = [cmd for cmd in script.commands if cmd.name != "assert"]

    if num_to_remove >= len(assert_cmds):
        print("Requested more assertions to remove than available. Skipping.")
        return script

    random.seed(seed)
    keep_indices = sorted(random.sample(range(len(assert_cmds)), len(assert_cmds) - num_to_remove))
    kept_asserts = [assert_cmds[i] for i in keep_indices]
    if verbose:
        print("Assertions after removal: ", kept_asserts)

    new_commands = non_assert_cmds + kept_asserts
    new_script = SmtLibScript()
    for cmd in new_commands:
        new_script.add_command(cmd)
    return new_script


def write_smt2_script(script: SmtLibScript, output_path: str):
    """
    Writes SmtLibScript to a file.
    :param script: SmtLibScript instance.
    :param output_path: Path to save script file.
    """

    script.to_file(output_path)


def validate_with_z3(file_path):
    """
    Validates the SmtLibScript found in the provided file with a Z3 solver.
    :param file_path: Path to SmtLibScript to verify.
    """
    script = load_smt2_script(file_path)
    with SmtLibSolver("z3") as solver:
        cmds = script.commands
        for cmd in cmds:
            evaluate_command(cmd, solver)

        try:
            result = solver.solve
            if result:
                print("SAT with Z3.")
                return True
            else:
                print("UNSAT with Z3.")
                return True
        except Exception as e:
            print("Z3 solver encountered an error.")
            print(e)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--input-file", type=str, help="Path to the original SMT-LIB file")
    parser.add_argument("--output-file", type=str, default="./outputs/output.smt2", help="Path to save the modified file")
    parser.add_argument("--remove", type=int, default=1, help="Number of assertions to remove randomly")
    args = parser.parse_args()

    print(f"Loading: {args.input_file}")
    script = load_smt2_script(args.input_file)
    new_script = remove_random_asserts(script, args.remove)

    print(f"Writing new file to: {args.output_file}")
    write_smt2_script(new_script, args.output_file)

    if validate_with_z3(args.output_file):
        print("Output file is valid (Z3 check passed).")
    else:
        print("Output file is invalid (Z3 returned errors).")


if __name__ == "__main__":
    main()

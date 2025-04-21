import os
import random
from pysmt.smtlib.parser import SmtLibParser
from pysmt.smtlib.script import SmtLibCommand, SmtLibScript
from pysmt.shortcuts import reset_env
import argparse
import subprocess

def load_smt2_script(file_path):
    reset_env()
    parser = SmtLibParser()
    return parser.get_script_fname(file_path)

def remove_random_asserts(script: SmtLibScript, num_to_remove: int):
    new_commands = []
    assert_cmds = [cmd for cmd in script.commands if cmd.name == "assert"]
    non_assert_cmds = [cmd for cmd in script.commands if cmd.name != "assert"]

    if num_to_remove >= len(assert_cmds):
        print("Requested more assertions to remove than available. Skipping.")
        return script

    keep_indices = sorted(random.sample(range(len(assert_cmds)), len(assert_cmds) - num_to_remove))
    kept_asserts = [assert_cmds[i] for i in keep_indices]

    new_commands = non_assert_cmds + kept_asserts
    return SmtLibScript(new_commands, script.logic)

def write_smt2_script(script: SmtLibScript, output_path: str):
    with open(output_path, "w") as f:
        f.write(f"(set-logic {script.logic})\n")
        for cmd in script.commands:
            f.write(cmd.serialize())
            f.write("\n")

def validate_with_z3(file_path):
    try:
        result = subprocess.run(["z3", file_path], capture_output=True, text=True)
        return result.returncode == 0
    except FileNotFoundError:
        print("Z3 not found. Skipping validation.")
        return False

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
        print("Output file is valid SMT-LIB (Z3 check passed).")
    else:
        print("Z3 reported an error. Output might be invalid.")

if __name__ == "__main__":
    main()

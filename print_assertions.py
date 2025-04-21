from pysmt.smtlib.parser import SmtLibParser
from pysmt.shortcuts import get_env
import os

def load_smt2_assertions(file_path):
    parser = SmtLibParser()
    script = parser.get_script_fname(file_path)

    assertions = []
    for cmd in script.commands:
        if cmd.name == 'assert':
            assertions.append(cmd.args[0])

    return assertions

def print_assertions(file_path):
    assertions = load_smt2_assertions(file_path)
    print(f"Loaded {len(assertions)} assertions from {file_path}")
    for i, a in enumerate(assertions):
        print(f"[{i}] {a.serialize()}")


if __name__ == "__main__":
    # Example usage
    smt_file = "inputs/qf_lra/bmwlin_20_5_1.inter.ind_k100.smt2"
    # note: the LRA.smt2 file seems to be unable to read, but any .smt2 file in the downloaded QF_LRA benchmark directory works
    print_assertions(smt_file)

import re
import random
import time
import subprocess
from pathlib import Path
from pysmt.shortcuts import *
from pysmt.smtlib.parser.parser import SmtLibParser
from pysmt.smtlib.script import SmtLibScript, evaluate_command
from pysmt.smtlib.solver import SmtLibSolver
import numpy as np
import matplotlib.pyplot as plt


INPUT_PATH = "./inputs/non-incremental/QF_LRA/TM/p5-driverlogNumeric_s9.smt2"
Z3_PATH = "z3"  


def split_assert_blocks(lines):
    """Split file into (assert ...) blocks and other lines."""
    all_asserts = []
    non_assert_lines = []
    in_assert = False
    balance = 0
    current_block = []

    for line in lines:
        if not in_assert and "(assert" in line:
            in_assert = True
            balance = line.count("(") - line.count(")")
            current_block = [line]
        elif in_assert:
            current_block.append(line)
            balance += line.count("(") - line.count(")")
            if balance == 0:
                all_asserts.append("".join(current_block))
                in_assert = False
        else:
            if "(check" in line:
                continue
            elif "(exit" in line:
                continue
            else:
                non_assert_lines.append(line)
    
    return non_assert_lines, all_asserts


def write_smt_file(non_asserts, kept_asserts, out_file):
    with open(out_file, "w") as f:
        for line in non_asserts:
            if "(set-info :status" not in line:
                f.write(line)
        for a in kept_asserts:
            if "(check" in a:
                continue
            f.write(a)
        f.write("(check-sat)\n")
        f.write("(exit)\n")


def run_z3(smt_script):
    try:
        z3solver = Solver("z3", "QF_LRA")
        z3solver.add_assertion(smt_script.get_strict_formula())
        for _ in range(3):
            z3solver.solve()
        start = time.time()
        result = z3solver.solve()
        elapsed = time.time() - start
        if result:
            return "sat", elapsed
        if not result:
            return "unsat", elapsed
    except subprocess.TimeoutExpired:
        return "timeout", float('inf')


def progressive_removal_experiment(input_file, max_removals, seed=42):
    with open(input_file, 'r') as f:
        lines = f.readlines()

    non_asserts, all_asserts = split_assert_blocks(lines)
    total = len(all_asserts)

    print(f"Total assertions: {total}")
    results_timing = []
    results_sat = []

    total_removals = min(total, max_removals)

    for k in range(1, total_removals + 1):
        random.seed(seed)
        kept = random.sample(all_asserts, total - k)
        parser = SmtLibParser()
        temp_file = "temp_reduced.smt2"
        write_smt_file(non_asserts, kept, temp_file)
        new_script = parser.get_script_fname(temp_file)
        # for cmd in non_asserts:
        #     new_script.add_command(cmd)
        # for cmd in kept:
        #     new_script.add_command(cmd)

        result, runtime = run_z3(new_script)
        print(f"Removed {k} constraints. Time: {runtime:.3f}s, Result: {result}")
        results_timing.append(runtime)
        results_sat.append(result)

    return results_timing, results_sat


def postprocess_data(results):
    means = np.mean(results, axis=0)
    meds = np.median(results, axis=0)
    # print(means.shape)
    return meds


def plot_results(results, xlabel, ylabel):
    plt.plot(np.array(range(results.shape[0]))+1, results)
    plt.xlabel(xlabel)
    plt.ylabel(ylabel)
    plt.show()


if __name__ == "__main__":
    num_trials=5
    seed=42
    results_timing = []
    results_sat = []
    for i in range(num_trials):
        intermediate_res_timing, intermediate_res_sat = progressive_removal_experiment(INPUT_PATH, max_removals=100, seed=seed+i)
        results_timing.append(intermediate_res_timing)
        results_sat.append(intermediate_res_sat)
    results_timing = np.array(results_timing, dtype = np.float32)
    results_means = postprocess_data(results_timing)
    plot_results(results_means, "Number of Removed Constraints", "Z3 Solver Runtime")

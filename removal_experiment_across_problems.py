import random
import time
import subprocess
from pathlib import Path
import numpy as np
import matplotlib.pyplot as plt
import argparse
from pysmt.shortcuts import *
from pysmt.smtlib.parser.parser import SmtLibParser
from pysmt.smtlib.script import SmtLibScript, evaluate_command
from pysmt.smtlib.solver import SmtLibSolver
import pickle
import csv


Z3_PATH = "z3"  
INPUT_DIR = "./inputs/non-incremental/QF_LRA/TM/"
# PERCENTAGES = [0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95]
# PERCENTAGES = [0, 10, 20, 30, 40, 50, 60, 70, 80, 90]
PERCENTAGES = [0, 1, 2, 5, 10, 25, 50]


NUM_TRIALS = 5

def split_assert_blocks(lines):
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
            non_assert_lines.append(line)
    return non_assert_lines, all_asserts

def write_smt_file(non_asserts, kept_asserts, out_file):
    with open(out_file, "w") as f:
        for line in non_asserts:
            if "(check" in line or "(exit" in line:
                continue
            if "(set-info :status" not in line:
                f.write(line)
        for a in kept_asserts:
            if "(check" in a or "(exit" in a:
                continue
            f.write(a)
        f.write("(check-sat)\n")
        f.write("(exit)\n")

def run_solver(smt_script, solver_name="z3"):
    try:
        solver = Solver(solver_name, "QF_LRA")
        solver.add_assertion(smt_script.get_strict_formula())
        for _ in range(3):
            solver.solve()
        start = time.time()
        result = solver.solve()
        elapsed = time.time() - start
        if result:
            return "sat", elapsed
        else:
            return "unsat", elapsed
    except subprocess.TimeoutExpired:
        return "timeout", float('inf')

def experiment_on_file(file_path, percentages, num_trials=50, solver_name="z3"):
    with open(file_path, 'r') as f:
        lines = f.readlines()

    non_asserts, all_asserts = split_assert_blocks(lines)
    total = len(all_asserts)

    timings_means = []

    for pct in percentages:
        trial_timings = []
        for trial in range(num_trials):
            random.seed(trial)
            if pct == 0:
                kept = all_asserts
            else:
                num_to_remove = int(total * (pct / 100.0))
                kept = random.sample(all_asserts, total - num_to_remove)

            temp_file = f"temp_reduced_{solver_name}_{pct}_{trial}.smt2"
            write_smt_file(non_asserts, kept, temp_file)
            parser = SmtLibParser()
            new_script = parser.get_script_fname(temp_file)
            result, runtime = run_solver(new_script, solver_name=solver_name)
            print(f"Filename: {file_path.name}; Pct Removed: {pct}% Trial: {trial} Runtime: {runtime:.3f}s Result: {result}")
            trial_timings.append(runtime)
            Path(temp_file).unlink()  # Clean up temp file after trial!

        mean_runtime = np.mean(trial_timings)
        timings_means.append(mean_runtime)

    return timings_means

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--solver", type=str, default="z3", help="Name of solver to use")
    args = parser.parse_args()

    solver = args.solver

    all_files = sorted(Path(INPUT_DIR).glob("*.smt2"))
    results = []
    file_names = []

    i = 0

    for file in all_files:
        # if file.name != "p5-driverlogNumeric_s8.smt2":
        #     continue
        print(f"Processing {file.name}...")
        timings = experiment_on_file(file, PERCENTAGES, num_trials=NUM_TRIALS, solver_name = solver)
        results.append(timings)
        file_names.append(file.stem)

    results = np.array(results)

    # Save results to CSV
    csv_file = f"experiment_results_{solver}.csv"
    with open(csv_file, mode="w", newline="") as f:
        writer = csv.writer(f)
        header = ["Filename"] + [f"{pct}% Removed" for pct in PERCENTAGES]
        writer.writerow(header)
        for filename, timing_row in zip(file_names, results):
            writer.writerow([filename] + list(timing_row))
    print(f"Results saved to {csv_file}")

    # Save results to Pickle
    pickle_file = f"experiment_results_{solver}.pkl"
    with open(pickle_file, "wb") as f:
        pickle.dump({
            "file_names": file_names,
            "percentages": PERCENTAGES,
            "results": results
        }, f)
    print(f"Pickled results saved to {pickle_file}")

    num_files = len(file_names)
    num_percents = len(PERCENTAGES)

    bar_width = 0.8 / num_percents
    x = np.arange(num_files)

    plt.figure(figsize=(max(10, num_files * 1.5), 6))
    for i, pct in enumerate(PERCENTAGES):
        plt.bar(x + i*bar_width, results[:, i], width=bar_width, label=f"{pct}% removed")

    plt.xlabel("Problem Files")
    plt.ylabel("Average Solver Runtime (s)")
    plt.title(f"Average Solver Runtime vs. Constraint Removal ({NUM_TRIALS} Trials)")
    plt.xticks(x + bar_width * (num_percents-1)/2, file_names, rotation=45, ha="right")
    plt.legend()
    plt.tight_layout()
    plt.show()

if __name__ == "__main__":
    main()

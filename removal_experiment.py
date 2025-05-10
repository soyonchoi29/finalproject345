import argparse
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
import pickle
from multiprocessing import Process, Manager

# INPUT_FILE = "p5-driverlogNumeric_s9.smt2"
# INPUT_PATH = "./inputs/non-incremental/QF_LRA/TM"

INPUT_FILE = "MC_05.smt2"
INPUT_PATH = "./inputs/non-incremental/QF_NIA/20220315-MathProblems"


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


def run_solver(smt_script, solver_name="z3", timeout=60):
    try:
        manager = Manager()
        return_dict = manager.dict()
        return_dict['return'] = None

        p = Process(target=solve, args=(smt_script, solver_name, return_dict))
        p.start()
        start = time.time()
        res = p.join(timeout)  # this blocks until the process terminates
        p.terminate()
        elapsed = time.time() - start
        if return_dict['return'] is True:
            return "sat", elapsed
        elif return_dict['return'] is False:
            return "unsat", elapsed
        elif res is None and return_dict['return'] is None:
            # timed out
            return "timeout", timeout

        # # keep going if no timeout
        # solver = Solver(solver_name, "QF_NIA")
        # solver.add_assertion(smt_script.get_strict_formula())
        #
        # # start up solver so there is no overhead
        # for _ in range(5):
        #     solver.solve()
        # start = time.time()
        # result = solver.solve()
        # elapsed = time.time() - start
    except subprocess.TimeoutExpired:
        return "timeout", timeout


def solve(smt_script, solver_name, return_dict):
    # solver_name can be "z3", "cvc5", "msat"
    solver = Solver(solver_name, "QF_NIA")
    solver.add_assertion(smt_script.get_strict_formula())
    result = solver.solve()
    print(result)
    return_dict['return'] = result
    return result


def progressive_removal_experiment(input_file, max_removal=0.5, step_size=100, solver_name="z3", seed=42):
    with open(input_file, 'r') as f:
        lines = f.readlines()

    non_asserts, all_asserts = split_assert_blocks(lines)
    total = len(all_asserts)

    print(f"Total assertions: {total}")
    results_timing = []
    results_sat = []

    max_removals = int(total*max_removal)

    for k in range(1, max_removals + step_size, step_size):
        random.seed(seed)
        kept = random.sample(all_asserts, total - k)
        parser = SmtLibParser()
        temp_file = f"temp_reduced_{solver_name}.smt2"
        write_smt_file(non_asserts, kept, temp_file)
        new_script = parser.get_script_fname(temp_file)
        result, runtime = run_solver(new_script, solver_name=solver_name)
        print(f"Removed {k} constraints. Time: {runtime:.3f}s, Result: {result}")
        results_timing.append(runtime)
        results_sat.append(result)

    return results_timing, results_sat


def postprocess_data(results):
    means = np.mean(results, axis=0)
    # print(means.shape)
    return means


def plot_results(results, xlabel, ylabel, step_size=100):
    plt.plot(range(1, results.shape[0]*step_size, step_size), results)
    plt.xlabel(xlabel)
    plt.ylabel(ylabel)
    plt.show()


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--input-file", type=str, default=INPUT_FILE, help="Path to the original SMT-LIB file")
    parser.add_argument("--solver", type=str, default="z3", help="Name of solver to use")
    parser.add_argument("--max-removal", type=float, default=0.5, help="Max portion of assertions to remove randomly")
    parser.add_argument("--step-size", type=int, default=15, help="Number of constraints to remove at each increment")
    parser.add_argument("--num-trials", type=int, default=100, help="Number of trials to run")
    parser.add_argument("--seed", type=int, default=42, help="Base seed for random removal")
    args = parser.parse_args()

    results_timing = []
    results_sat = []
    for i in range(args.num_trials):
        print("===================================================================================")
        print(f" =================================== TRIAL {i} ===================================")
        print("===================================================================================")

        intermediate_res_timing, intermediate_res_sat = progressive_removal_experiment(INPUT_PATH+"/"+args.input_file, max_removal=args.max_removal, step_size=args.step_size, solver_name=args.solver, seed=args.seed+i)
        results_timing.append(intermediate_res_timing)
        results_sat.append(intermediate_res_sat)
    results_timing = np.array(results_timing, dtype = np.float32)
    pickle.dump(results_timing, open(f'results_{args.solver}_{args.input_file[:-5]}_{args.max_removal}.pkl', 'wb'))
    # results_timing = pickle.load(open(f'results_{args.solver}_{args.input_file[:-5]}_{args.max_removal}.pkl', 'rb'))
    # results_timing = pickle.load(open(f'results_z3_0.5.pkl', 'rb'))
    results_means = postprocess_data(results_timing)
    plot_results(results_means, "Number of Removed Constraints", f"{args.solver} Solver Runtime", step_size=args.step_size)

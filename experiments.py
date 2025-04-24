import argparse
import random
import time
import numpy as np

from random_remove import load_smt2_script, remove_random_asserts, write_smt2_script


def run_experiments(script, num_trials, max_removals, seed=42):
    sat_results = []
    timing_results = []
    for i in range(max_removals):
        sat_trials = []
        timing_trials = []

        for j in range(num_trials):
            new_script = remove_random_asserts(script, i, seed=seed+j)
            start = time.time()
            # TODO: solve the new script here
            time_elapsed = time.time()-start
            # TODO: sat_trials.append(result_from_solver)
            # True for SAT, False for UNSAT
            timing_trials.append(time_elapsed)

        # add mean timing and satisfiability results
        sat_results.append(sat_trials)
        timing_results.append(np.mean(np.array(timing_trials)))

    return sat_results, timing_results


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--num-trials", type=int, help="Number of trials to run")
    parser.add_argument("--seed", type=int, default=42, help="Seed for randomization in experiments")
    parser.add_argument("--input-file", type=str, help="Path to the original SMT-LIB file")
    parser.add_argument("--output-file", type=str, default="./outputs/output.smt2", help="Path to save the modified file")
    parser.add_argument("--max-remove", type=int, default=1, help="Maximum of assertions to remove randomly")

    args = parser.parse_args()
    script = load_smt2_script(args.input_file)

    run_experiments(script, args.num_trials, args.max_remove, args.seed)



if __name__ == "__main__":
    main()

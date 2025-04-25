import os

def split_smt2_by_check_sat(input_path, output_dir):
    with open(input_path, "r") as f:
        lines = f.readlines()

    os.makedirs(output_dir, exist_ok=True)

    blocks = []
    current_block = []
    for line in lines:
        current_block.append(line)
        if "(check-sat)" in line:
            blocks.append(current_block)
            current_block = []

    file_paths = []
    for i, block in enumerate(blocks):
        filename = f"subproblem_{i:03}.smt2"
        path = os.path.join(output_dir, filename)
        with open(path, "w") as out:
            out.writelines(block)
        file_paths.append(path)

    print(f"Split into {len(file_paths)} subproblems in {output_dir}")
    return file_paths

if __name__ == "__main__":
    import argparse

    parser = argparse.ArgumentParser()
    parser.add_argument("input_file", help="Path to the input .smt2 file")
    parser.add_argument("output_dir", help="Directory to store subproblem files")
    args = parser.parse_args()

    split_smt2_by_check_sat(args.input_file, args.output_dir)

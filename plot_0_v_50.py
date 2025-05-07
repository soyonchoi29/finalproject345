import pickle
import matplotlib.pyplot as plt
import numpy as np

SOLVER = "z3"
# Load pickled data
with open(f"experiment_results_{SOLVER}.pkl", "rb") as f:
    data = pickle.load(f)

file_names = data["file_names"]
percentages = data["percentages"]
results = data["results"]

# Get indices of 0% and 50% removal
idx_0 = percentages.index(0)
idx_50 = percentages.index(50)

x_vals = results[:, idx_0]  # 0% removed
y_vals = results[:, idx_50]  # 50% removed

# Plot
plt.figure(figsize=(8, 6))
plt.scatter(x_vals, y_vals)

for i, name in enumerate(file_names):
    plt.text(x_vals[i], y_vals[i], name, fontsize=8, ha='left')

plt.xlabel("Runtime at 0% Removed (s)")
plt.ylabel("Runtime at 50% Removed (s)")
plt.title(f"{SOLVER} Runtime: 0% vs. 50% Constraint Removal")
plt.grid(True)
plt.tight_layout()
plt.show()

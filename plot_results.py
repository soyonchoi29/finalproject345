import numpy as np
import matplotlib.pyplot as plt
import pickle

z3_results_timing = pickle.load(open(f'results_z3_0.5.pkl', 'rb'))
cvc5_results_timing = pickle.load(open(f'results_cvc5_0.5.pkl', 'rb'))

z3_means = np.mean(z3_results_timing, axis=0)
cvc5_means = np.mean(cvc5_results_timing, axis=0)
# print(means.shape)

plt.plot(np.array(range(1, z3_means.shape[0]*100, 100)), z3_means, label='z3')
plt.plot(np.array(range(1, cvc5_means.shape[0]*100, 100)), cvc5_means, label='cvc5')

plt.xlabel("Number of Removed Constraints")
plt.ylabel("Mean Solver Runtime")
plt.legend(loc="best")
plt.show()


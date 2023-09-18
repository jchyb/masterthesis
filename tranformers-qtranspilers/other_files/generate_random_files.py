from qiskit.circuit.random import random_circuit
import random

for i in range(2000):
    q = random_circuit(10, random.randint(1, 14), measure=True, seed=random.randint(1, 1000000)) # constant qubit amount: 10
    q.qasm(filename="./benchmark_files_after/rand_{}.qasm".format(i))

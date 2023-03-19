from qiskit.circuit.random import random_circuit
import random

for i in range(1000):# prev (5, 15)
    q = random_circuit(10, random.randint(1, 14), measure=True, seed=random.randint(1, 1000000)) #TODO większe obwody
    q.qasm(filename="./benchmark_files_after/rand_{}.qasm".format(i))

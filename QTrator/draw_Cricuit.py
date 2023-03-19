from qiskit import QuantumCircuit
import matplotlib.pyplot as plt

q = QuantumCircuit(2,2)

q.x(0)

q.cx(0, 1)

q.h(1)

q.barrier()

q.measure(0, 0)

q.measure(1,1)

q.draw('mpl')

plt.show()
import qiskit
import matplotlib.pyplot as plt

sim = qiskit.Aer.get_backend('aer_simulator')

qc = qiskit.QuantumCircuit(2, 0)
qc.reset(0)
qc.reset(1)
qc.h(0)
qc.cx(0, 1)
qc.save_statevector()   
qc.draw(output='mpl')
plt.show()

qobj = qiskit.assemble(qc)     # Create a Qobj from the circuit for the simulator to run
result = sim.run(qobj).result()
out_state = result.get_statevector()
print(out_state)
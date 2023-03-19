from qiskit.circuit.library import HGate, XGate
from qiskit.transpiler import PassManager
from qiskit.transpiler.passes import InverseCancellation

from convert_qasm_to_qiskit import get_circuit_from_qasm_file

# to dostaje liste bramek, ktore sie znosza
# aktualnie dalem h i x ale pewnie moznaby wiecej
class InverseCancellationOptimizer:
    def __init__(self, qasm_file, quantum_backend):
        self.qasm_file = qasm_file
        self.quantum_backend = quantum_backend
        self.pm = PassManager(InverseCancellation([HGate(), XGate()]))
        #print(qasm_file)
        self.circuit = get_circuit_from_qasm_file(qasm_file)
        self.optimizer_name = 'InverseCancellation'

    def optimize_with_save(self, output_file):
        transpiled = self.pm.run(self.circuit)
        transpiled.qasm(filename=output_file)


def get_optimizer(qasm_file, quantum_backend):
    return InverseCancellationOptimizer(qasm_file, quantum_backend)

from qiskit.transpiler import PassManager
from qiskit.transpiler.passes import Collect1qRuns

from convert_qasm_to_qiskit import get_circuit_from_qasm_file


class Collect1qRunsOptimizer:
    def __init__(self, qasm_file, quantum_backend):
        self.qasm_file = qasm_file
        self.quantum_backend = quantum_backend
        self.pm = PassManager(Collect1qRuns())
        #print(qasm_file)
        self.circuit = get_circuit_from_qasm_file(qasm_file)
        self.optimizer_name = 'Collect1qRuns'

    def optimize_with_save(self, output_file):
        transpiled = self.pm.run(self.circuit)
        transpiled.qasm(filename=output_file)


def get_optimizer(qasm_file, quantum_backend):
    return Collect1qRunsOptimizer(qasm_file, quantum_backend)

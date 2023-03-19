import shutil

from qiskit import transpile

from convert_qasm_to_qiskit import get_circuit_from_qasm_file


class BaselineOptimizer:
    def __init__(self, qasm_file, quantum_backend):
        self.qasm_file = qasm_file
        self.quantum_backend = quantum_backend
        self.optimizer_name = 'Baseline'

    def optimize_with_save(self, output_file):
        circuit = get_circuit_from_qasm_file(self.qasm_file)
        circuit = transpile(circuit, backend=self.quantum_backend, optimization_level=0)
        circuit.qasm(filename=output_file)


def get_optimizer(qasm_file, quantum_backend):
    return BaselineOptimizer(qasm_file, quantum_backend)

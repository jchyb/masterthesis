from qiskit.transpiler import PassManager
from qiskit.transpiler.passes import CollectMultiQBlocks

from convert_qasm_to_qiskit import get_circuit_from_qasm_file


class CollectMultiQBlocksOptimizer:
    def __init__(self, qasm_file, quantum_backend):
        self.qasm_file = qasm_file
        self.quantum_backend = quantum_backend
        self.pm = PassManager(CollectMultiQBlocks())
        #print(qasm_file)
        self.circuit = get_circuit_from_qasm_file(qasm_file)
        self.optimizer_name = 'CollectMultiQBlocks'

    def optimize_with_save(self, output_file):
        transpiled = self.pm.run(self.circuit)
        transpiled.qasm(filename=output_file)


def get_optimizer(qasm_file, quantum_backend):
    return CollectMultiQBlocksOptimizer(qasm_file, quantum_backend)

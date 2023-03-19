from qiskit.transpiler import PassManager
from qiskit.transpiler.passes import ConsolidateBlocks

from convert_qasm_to_qiskit import get_circuit_from_qasm_file


class ConsolidateBlocksOptimizer:
    def __init__(self, qasm_file, quantum_backend):
        self.qasm_file = qasm_file
        self.quantum_backend = quantum_backend
        self.pm = PassManager(ConsolidateBlocks())
        #print(qasm_file)
        self.circuit = get_circuit_from_qasm_file(qasm_file)
        self.optimizer_name = 'ConsolidateBlocks'

    def optimize_with_save(self, output_file):
        transpiled = self.pm.run(self.circuit)
        transpiled.qasm(filename=output_file)


def get_optimizer(qasm_file, quantum_backend):
    return ConsolidateBlocksOptimizer(qasm_file, quantum_backend)

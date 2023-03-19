from qiskit.transpiler import PassManager
from qiskit.transpiler.passes import CrosstalkAdaptiveSchedule

from convert_qasm_to_qiskit import get_circuit_from_qasm_file


class CrosstalkAdaptiveScheduleOptimizer:
    def __init__(self, qasm_file, quantum_backend):
        self.qasm_file = qasm_file
        self.quantum_backend = quantum_backend
        self.pm = PassManager(CrosstalkAdaptiveSchedule(quantum_backend.properties()))
        #print(qasm_file)
        self.circuit = get_circuit_from_qasm_file(qasm_file)
        self.optimizer_name = 'CrosstalkAdaptiveSchedule'

    def optimize_with_save(self, output_file):
        transpiled = self.pm.run(self.circuit)
        transpiled.qasm(filename=output_file)


def get_optimizer(qasm_file, quantum_backend):
    return CrosstalkAdaptiveScheduleOptimizer(qasm_file, quantum_backend)

from qiskit.transpiler import PassManagerConfig
from qiskit.transpiler.coupling import CouplingMap
from qiskit.transpiler.preset_passmanagers import level_2_pass_manager

from convert_qasm_to_qiskit import get_circuit_from_qasm_file


class QiskitLevel2Optimizer:
    def __init__(self, qasm_file, quantum_backend):
        self.qasm_file = qasm_file
        self.quantum_backend = quantum_backend
        self.pm = level_2_pass_manager(self.pm_config(quantum_backend))
        #print(qasm_file)
        self.circuit = get_circuit_from_qasm_file(qasm_file)
        self.optimizer_name = 'QiskitLevel2'


    def pm_config(self, backend):
        return PassManagerConfig(
            basis_gates=backend.configuration().basis_gates,
            coupling_map=CouplingMap(backend.configuration().coupling_map),
            backend_properties=backend.properties())

    def optimize_with_save(self, output_file):
        transpiled = self.pm.run(self.circuit)
        transpiled.qasm(filename=output_file)


def get_optimizer(qasm_file, quantum_backend):
    return QiskitLevel2Optimizer(qasm_file, quantum_backend)

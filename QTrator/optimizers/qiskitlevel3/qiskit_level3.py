from qiskit.transpiler import PassManagerConfig
from qiskit.transpiler.coupling import CouplingMap
from qiskit.transpiler.preset_passmanagers import level_3_pass_manager

from convert_qasm_to_qiskit import get_circuit_from_qasm_file


class QiskitLevel3Optimizer:
    def __init__(self, qasm_file, quantum_backend):
        self.qasm_file = qasm_file
        self.quantum_backend = quantum_backend
        self.pm = level_3_pass_manager(self.pm_config(quantum_backend))
        #print(qasm_file)
        self.circuit = get_circuit_from_qasm_file(qasm_file)
        self.optimizer_name = 'QiskitLevel3'


    def pm_config(self, backend):
        return PassManagerConfig(
            initial_layout=None,
            basis_gates=['u1', 'u2', 'u3', 'cx', 'id', 'u'],
            coupling_map=CouplingMap(backend.configuration().coupling_map),
            backend_properties=backend.properties())

    def optimize_with_save(self, output_file):
        transpiled = self.pm.run(self.circuit)
        transpiled.qasm(filename=output_file)


def get_optimizer(qasm_file, quantum_backend):
    return QiskitLevel3Optimizer(qasm_file, quantum_backend)

def get_name():
    return 'QiskitLevel3'

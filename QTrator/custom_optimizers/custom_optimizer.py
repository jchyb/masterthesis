
import time

from qiskit.transpiler import PassManagerConfig
from qiskit.transpiler.coupling import CouplingMap

from convert_qasm_to_qiskit import get_circuit_from_qasm_file
from custom_optimizers.custom_pass_manager_2 import custom_pass_manager # 

class CustomOptimizer:
    def __init__(self, opt_code, qasm_file, quantum_backend):
        self.qasm_file = qasm_file
        self.quantum_backend = quantum_backend
        self.pm = custom_pass_manager(self.pm_config(self.quantum_backend), opt_code)
        self.circuit = get_circuit_from_qasm_file(qasm_file)
        self.optimizer_name = opt_code

    def pm_config(self, backend):
        return PassManagerConfig(
            basis_gates=backend.configuration().basis_gates,
            coupling_map=CouplingMap(backend.configuration().coupling_map),
            backend_properties=backend.properties())
        # return PassManagerConfig(
        #     initial_layout=None,
        #     basis_gates=['u1', 'u2', 'u3', 'cx', 'id', 'u'],
        #     coupling_map=CouplingMap(backend.configuration().coupling_map),
        #     backend_properties=backend.properties())

    def optimize_with_save(self, output_file):
        transpiled = self.pm.run(self.circuit)
        transpiled.qasm(filename=output_file)

def custom_optimizer(opt_code, qasm_file, backend):
    return CustomOptimizer(opt_code, qasm_file, backend)
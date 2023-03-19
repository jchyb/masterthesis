import time

from qiskit.transpiler import PassManagerConfig
from qiskit.transpiler.coupling import CouplingMap
from qiskit.transpiler.preset_passmanagers import level_3_pass_manager

from convert_qasm_to_qiskit import get_circuit_from_qasm_file
from optimizers.rpo.passmanager import level_3_hoare_pass_manager


class RPOLevel3HoareOptimizer:
    def __init__(self, qasm_file, quantum_backend):
        self.qasm_file = qasm_file
        self.quantum_backend = quantum_backend
        self.pm1 = level_3_pass_manager(self.pm_config_q(self.quantum_backend))
        self.pm2 = level_3_hoare_pass_manager(self.pm_config(0, self.quantum_backend))
        self.pm3 = level_3_pass_manager(self.pm_config_q(self.quantum_backend))

        # print(qasm_file)
        self.circuit = get_circuit_from_qasm_file(qasm_file)
        self.optimizer_name = 'l3rpol3'

    def pm_config(self, seed, backend):
        return PassManagerConfig(
            initial_layout=None,
            basis_gates=['u1', 'u2', 'u3', 'cx', 'id', 'u'],
            coupling_map=CouplingMap(backend.configuration().coupling_map),
            backend_properties=backend.properties(),
            seed_transpiler=seed)

    def pm_config_q(self, backend):
        return PassManagerConfig(
            basis_gates=backend.configuration().basis_gates,
            coupling_map=CouplingMap(backend.configuration().coupling_map),
            backend_properties=backend.properties())

    def optimize_with_save(self, output_file):
        start = time.time()
        transpiled = self.pm1.run(self.circuit)
        print("L3RPOL3 1", time.time() - start)
        start = time.time()
        transpiled = self.pm2.run(transpiled)
        print("L3RPOL3 2", time.time() - start)
        start = time.time()
        transpiled = self.pm3.run(transpiled)
        print("L3RPOL3 3", time.time() - start)
        transpiled.qasm(filename=output_file)


def get_optimizer(qasm_file, quantum_backend):
    return RPOLevel3HoareOptimizer(qasm_file, quantum_backend)

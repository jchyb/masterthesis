import time

from qiskit.transpiler import PassManagerConfig
from qiskit.transpiler.coupling import CouplingMap
from qiskit.transpiler.preset_passmanagers import level_2_pass_manager

from convert_qasm_to_qiskit import get_circuit_from_qasm_file
from optimizers.l2rpopurel2.passmanager import level_3_with_contant_pure


class RPOLevel3HoareOptimizer:
    def __init__(self, qasm_file, quantum_backend):
        self.qasm_file = qasm_file
        self.quantum_backend = quantum_backend
        self.pm2 = level_3_with_contant_pure(self.pm_config(0, self.quantum_backend))
        self.pm3 = level_2_pass_manager(self.pm_config(0, self.quantum_backend))

        # print(qasm_file)
        self.circuit = get_circuit_from_qasm_file(qasm_file)
        self.optimizer_name = 'rpopurel2'

    def pm_config(self, seed, backend):
        return PassManagerConfig(
            initial_layout=None,
            basis_gates=['u1', 'u2', 'u3', 'cx', 'id', 'u'],
            coupling_map=CouplingMap(backend.configuration().coupling_map),
            backend_properties=backend.properties(),
            seed_transpiler=seed)

    def optimize_with_save(self, output_file):
        start = time.time()
        transpiled = self.pm2.run(self.circuit)
        print("RPOpureL2 2", time.time() - start)
        start = time.time()
        transpiled = self.pm3.run(transpiled)
        print("RPOpureL2 3", time.time() - start)
        transpiled.qasm(filename=output_file)


def get_optimizer(qasm_file, quantum_backend):
    return RPOLevel3HoareOptimizer(qasm_file, quantum_backend)

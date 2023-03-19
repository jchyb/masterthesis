import os
import subprocess

from qiskit.transpiler import PassManagerConfig
from qiskit.transpiler.coupling import CouplingMap
from qiskit.compiler import transpile

from convert_qasm_to_qiskit import get_circuit_from_qasm_string
from qiskit.transpiler import PassManagerConfig
from qiskit.transpiler.coupling import CouplingMap

from convert_qasm_to_qiskit import get_circuit_from_qasm_file
from optimizers.rpo.passmanager import level_3_hoare_pass_manager
from qasm_file_preparer import add_measurements_and_barrier


class FeynmanRPOOptimizer:
    def __init__(self, qasm_file, quantum_backend):
        self.qasm_file = qasm_file
        self.quantum_backend = quantum_backend
        # print(qasm_file)
        self.temp_filename = "temp_feynman.qasm"
        self.optimizer_name = 'feynmanrpo'
        self.pm = level_3_hoare_pass_manager(self.pm_config(0, self.quantum_backend))

    def pm_config(self, seed, backend):
        return PassManagerConfig(
            initial_layout=None,
            basis_gates=['u1', 'u2', 'u3', 'cx', 'id'],
            coupling_map=CouplingMap(backend.configuration().coupling_map),
            backend_properties=backend.properties(),
            seed_transpiler=seed)

    def optimize_with_save(self, output_file):
        qasm_text = self.load_qasm()
        qasm_text = self.remove_barriers(
            qasm_text)  # moze zaznaczyc jakos, zeby optymalizowac po kawalku ? czy feynman do ogarnie
        # print(qasm_text)
        qasm_text, end_measurements = self.remove_measurements(qasm_text)
        self.save_temp_qasm(qasm_text)
        # print(qasm_text)
        # print("########")
        after_transpile = self.run_feynman()
        # print(after_transpile)
        # print("########")

        after_transpile = add_measurements_and_barrier(after_transpile, end_measurements)
        circuit = get_circuit_from_qasm_string(after_transpile)

        transpiled = self.pm.run(circuit)
        transpiled.qasm(filename=output_file)
        self.remove_temp_file()

    def load_qasm(self):
        s = None
        with open(self.qasm_file, "r") as f:
            s = f.read()
        return s

    def remove_barriers(self, qasm_text):
        lines = qasm_text.split('\n')
        lines_new = []
        for l in lines:
            if not l.startswith('barrier'):
                lines_new.append(l)

        return '\n'.join(lines_new)

    def remove_measurements(self, qasm_text):
        lines = qasm_text.split('\n')
        lines_new = []
        measurements = []
        for l in lines:
            if not l.startswith('measure'):
                lines_new.append(l)
            else:
                measurements.append(l)

        return '\n'.join(lines_new), measurements

    def save_temp_qasm(self, qasm_text):
        with open(self.temp_filename, "w") as f:
            f.write(qasm_text)

    def remove_temp_file(self):
        try:
            os.remove(self.temp_filename)
        except OSError:
            pass

    def save_output(self, after_transpile_circuits, output_file):
        after_transpile_circuits.qasm(filename=output_file)

    def transpile_for_backend(self, after_transpile):
        circuit = get_circuit_from_qasm_string(after_transpile)
        if self.quantum_backend is not None:
            # print(self.quantum_backend.configuration())
            circuit = transpile(circuit, backend=self.quantum_backend, optimization_level=0)
        return circuit

    def run_feynman(self):
        process = subprocess.Popen(['/home/mgr/mgr_comparator-master/optimizers/feynman/feyn.sh', "{}".format(
            os.path.abspath(self.temp_filename))],
                                   stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        out, err = process.communicate()
        return out.decode('utf-8')


# transpiled.qasm(formatted=True, filename="result_files/test.qasm")


def get_optimizer(qasm_file, quantum_backend):
    return FeynmanRPOOptimizer(qasm_file, quantum_backend)

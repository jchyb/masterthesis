from importlib import import_module
from shutil import copyfile
import os


def prepare_qasm_file(file):
    if file.endswith('.qasm'):
        copyfile(file, "./benchmark_files/" + os.path.basename(file))


def create_qasm_from_qiskit_circuit(file):
    mod = import_module(file)
    q = mod.circuit()
    q.qasm(filename="./benchmark_files/" + str(file.split(".")[len(file.split(".")) - 1]) + ".qasm")


def create_qasms_from_suite(file):
    mod = import_module(file)
    for name, q in mod.circuits():
        q.qasm(filename="./benchmark_files/" + name + ".qasm")


def add_measurements_and_barrier(after_transpile, end_measurements):
    after_transpile += "\n"
    from convert_qasm_to_qiskit import get_circuit_from_qasm_string
    circuit = get_circuit_from_qasm_string(after_transpile)
    circuit.barrier()
    after_transpile = circuit.qasm(formatted=False)

    for meas in end_measurements:
        after_transpile += "\n" + meas
    return after_transpile

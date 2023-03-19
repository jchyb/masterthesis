from qiskit import QuantumCircuit


def get_circuit_from_qasm_file(file):
    # print(1111)
    # print(file)
    return QuantumCircuit.from_qasm_file(file)


def get_circuit_from_qasm_string(string):
    # print(1111)
    # print(string)
    return QuantumCircuit.from_qasm_str(string)

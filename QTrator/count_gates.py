import os

from convert_qasm_to_qiskit import get_circuit_from_qasm_file

benchmark_files_list = os.listdir("benchmark_files/")
benchmark_files_list.sort()

for file in benchmark_files_list:
    q = get_circuit_from_qasm_file("benchmark_files/" + file)

    print(file, q.size())







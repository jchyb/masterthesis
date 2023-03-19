from qiskit import execute
from qiskit.providers.aer import QasmSimulator

from convert_qasm_to_qiskit import get_circuit_from_qasm_file

q = get_circuit_from_qasm_file("./benchmark_files/" + "qaoa_n6.qasm")
q = get_circuit_from_qasm_file("./result_files/" + "RPOLevel3Pure_qaoa_n6.qasm")


job_noise = execute(q, QasmSimulator(), shots=10000, optimization_level=0)
count_noise = job_noise.result().get_counts()

print(count_noise)

import datetime
from importlib import import_module

from qiskit import execute, QuantumRegister, ClassicalRegister, QuantumCircuit
from qiskit.providers.aer import AerSimulator, QasmSimulator
from qiskit.quantum_info import hellinger_fidelity
from qiskit.test.mock import FakeMontreal

from convert_qasm_to_qiskit import get_circuit_from_qasm_file


def log(message):
    print("{} - {}".format(datetime.datetime.now(), message))


def get_circuit_for_iterations(i):
    q = QuantumRegister(3)
    c = ClassicalRegister(3)
    qc = QuantumCircuit(q, c)

    qc.h(q[0])
    qc.h(q[1])
    qc.h(q[2])

    for _ in range(i):
        qc.h(q[2])
        qc.ccx(q[0], q[1], q[2])
        qc.h(q[2])

        qc.h(q[0])
        qc.h(q[1])
        qc.h(q[2])

        qc.x(q[0])
        qc.x(q[1])
        qc.x(q[2])

        qc.h(q[2])
        qc.ccx(q[0], q[1], q[2])
        qc.h(q[2])

        qc.x(q[0])
        qc.x(q[1])
        qc.x(q[2])

        qc.h(q[0])
        qc.h(q[1])
        qc.h(q[2])

    qc.measure(q[0], c[0])
    qc.measure(q[1], c[1])
    qc.measure(q[2], c[2])

    return qc


def get_circuit_for_iterations1(i):
    return get_circuit_from_qasm_file("./files/grover_{}.qasm".format(i))



backend_hardware = FakeMontreal()
sim = AerSimulator()


for i in range(1,5):
    c = get_circuit_for_iterations1(i)

    log("Circuit for {} iterations".format(i))

    c.qasm(filename="q.qasm")

    log("baseline")

    mod = import_module('optimizers.baseline.opt')

    opt = mod.get_optimizer("q.qasm", backend_hardware)

    opt.optimize_with_save("q1.qasm")

    c1 = get_circuit_from_qasm_file("q1.qasm")
    #c1 = get_circuit_from_qasm_file("../result_files/Baseline_grover.qasm")


    job_ideal = execute(c1, sim, shots=1024)
    count_baseline = job_ideal.result().get_counts()


    log("RPOLevel3Pure")

    mod = import_module('optimizers.rpopure.rpo_optimizer')

    opt = mod.get_optimizer("q.qasm", backend_hardware)

    opt.optimize_with_save("q2.qasm")

    c1 = get_circuit_from_qasm_file("q2.qasm")
    #c1 = get_circuit_from_qasm_file("../result_files/RPOLevel3Pure_grover.qasm")

    job_ideal = execute(c1, sim, shots=1024)
    count_rpopure = job_ideal.result().get_counts()

    log("l1rpol1")

    mod = import_module('optimizers.rpopurel1.l1rpol1')

    opt = mod.get_optimizer("q.qasm", backend_hardware)

    opt.optimize_with_save("q3.qasm")

    c1 = get_circuit_from_qasm_file("q3.qasm")
    #c1 = get_circuit_from_qasm_file("../result_files/rpopurel1_grover.qasm")

    job_ideal = execute(c1, sim, shots=1024)
    count_rpopurel1 = job_ideal.result().get_counts()

    log("l2rpol2")

    mod = import_module('optimizers.rpopurel2.l2rpol2')

    opt = mod.get_optimizer("q.qasm", backend_hardware)

    opt.optimize_with_save("q4.qasm")

    c1 = get_circuit_from_qasm_file("q4.qasm")
    #c1 = get_circuit_from_qasm_file("../result_files/rpopurel2_grover.qasm")

    job_ideal = execute(c1, sim, shots=1024)
    count_rpopurel2 = job_ideal.result().get_counts()

    log("l3rpol3")

    mod = import_module('optimizers.rpopurel3.l3rpol3')

    opt = mod.get_optimizer("q.qasm", backend_hardware)

    opt.optimize_with_save("q5.qasm")

    c1 = get_circuit_from_qasm_file("q5.qasm")
    #c1 = get_circuit_from_qasm_file("../result_files/rpopurel3_grover.qasm")

    job_ideal = execute(c1, sim, shots=1024)
    count_rpopurel3 = job_ideal.result().get_counts()

    print(count_baseline)
    print(count_rpopure)
    print(count_rpopurel1)
    print(count_rpopurel2)
    print(count_rpopurel3)


    log("Hellinger fidelity {} - {}".format('rpo_optimizer', hellinger_fidelity(count_baseline, count_rpopure)))
    log("Hellinger fidelity {} - {}".format('rpopurel1', hellinger_fidelity(count_baseline, count_rpopurel1)))
    log("Hellinger fidelity {} - {}".format('rpopurel2', hellinger_fidelity(count_baseline, count_rpopurel2)))
    log("Hellinger fidelity {} - {}".format('rpopurel3', hellinger_fidelity(count_baseline, count_rpopurel3)))

def evaluate_errors():
    def results_similarity(r_ideal, r):
        ideal_size = len(r_ideal)
        score = 0.0

        for a in r_ideal:
            score += (abs(r.get(a, 0) - r_ideal[a]) / r_ideal[a]) / ideal_size

        return score

    comp_ideal = {}
    comp_noise = {}
    comp_noise_noise = {}

    fidelity_ideal = {}
    fidelity_noise = {}
    fidelity_noise_noise = {}


    import os
    import datetime

    from qiskit import execute, Aer
    # from qiskit.ignis.verification import state_tomography_circuits, StateTomographyFitter
    from qiskit.providers.aer import QasmSimulator, noise, AerSimulator
    from qiskit.quantum_info import state_fidelity
    from qiskit.test.mock import FakeMontreal

    from convert_qasm_to_qiskit import get_circuit_from_qasm_file

    def log(message):
        print("{} - {}".format(datetime.datetime.now(), message))

    backend = QasmSimulator()
    backend_hardware = FakeMontreal()

    noise_model = noise.NoiseModel.from_backend(backend_hardware)

    shots = 1024

    methods = set()
    circuits = set()

    for file in os.listdir("result_files/"):
        if file.endswith(".qasm"):
            method = file.split('_')[0]
            circuit = "_".join(file.split('_')[1:]).replace(".qasm", "")

            methods.add(method)
            circuits.add(circuit)

    methods = list(methods)
    methods.sort()

    circuits = list(circuits)
    circuits.sort()

    results_ideal = {}
    results_noise = {}

    state_vectors = {}
    state_vectors_noise = {}

    backend_qasm = QasmSimulator()
    backend_statevector = Aer.get_backend('statevector_simulator')

    for circuit in circuits:
        for method in methods:
            print()

            log(str(circuit) + " - " + str(method))
            c = get_circuit_from_qasm_file("result_files/{}_{}.qasm".format(method, circuit))
            # backend = Aer.get_backend('aer_simulator')
            # backend = QasmSimulator()
            #

            log("Job noise")
            job_noise = execute(c, backend_qasm, shots=shots, noise_model=noise_model)
            count_noise = job_noise.result().get_counts()

            results_noise[(method, circuit)] = count_noise

            del job_noise
            del count_noise

            # print(111)
            log("Job ideal")
            job_ideal = execute(c, backend_qasm, shots=shots)
            count_ideal = job_ideal.result().get_counts()

            results_ideal[(method, circuit)] = count_ideal
            # print(123)

            del job_ideal
            del count_ideal

            # #tomography test
            # #print(c.qregs)
            # c.remove_final_measurements()
            # #print(c)
            # qst_bell = state_tomography_circuits(c,[c.qregs[0][0], c.qregs[0][1], c.qregs[0][2], c.qregs[0][3]])
            # #print(qst_bell)
            # job = execute(qst_bell, backend, shots=1024)
            # tomo_fitter_bell = StateTomographyFitter(job.result(), qst_bell)
            # rho_fit_bell = tomo_fitter_bell.fit(method='lstsq')
            # print(rho_fit_bell)

            # test of statevector
            #         backend = AerSimulator.from_backend(backend_hardware)
            #         c.remove_final_measurements()
            #         c.save_statevector()
            # #        job = backend.run(c, shots=1, noise_model=noise_model)
            #
            #         job = backend.run(c, shots=1, noise_model=noise_model)
            #         result = job.result()
            #         print(result.get_statevector())

            c = get_circuit_from_qasm_file("result_files/{}_{}.qasm".format(method, circuit))

            # backend = Aer.get_backend('statevector_simulator')
            c.remove_final_measurements()

            log("Statevector noise")
            job = backend_statevector.run(c, shots=1, noise_model=noise_model)
            result = job.result()
            # print(result.get_statevector())
            sv1 = result.get_statevector()
            state_vectors_noise[(method, circuit)] = sv1

            del job
            del result
            del sv1

            log("Statevector ideal")

            job = backend_statevector.run(c, shots=1)
            result = job.result()
            # print(result.get_statevector())
            sv2 = result.get_statevector()
            state_vectors[(method, circuit)] = sv2

            del job
            del result
            del sv2
            # del backend
            del c

            # print(state_fidelity(sv1, sv2))

            result_ideal = results_ideal[("Baseline", circuit)]
            # print(result_ideal)
            results_curr_ideal = results_ideal[(method, circuit)]

            results_curr = results_noise[(method, circuit)]
            # print(results_curr)

            result_noise = results_noise[('Baseline', circuit)]

            comp_ideal[(method, circuit)] = results_similarity(result_ideal, results_curr_ideal)
            comp_noise[(method, circuit)] = results_similarity(result_ideal, results_curr)
            comp_noise_noise[(method, circuit)] = results_similarity(result_noise, results_curr)

            result_ideal = state_vectors[("Baseline", circuit)]
            # print(result_ideal)
            results_curr_ideal = state_vectors[(method, circuit)]

            results_curr = state_vectors_noise[(method, circuit)]
            # print(results_curr)

            result_noise = state_vectors_noise[('Baseline', circuit)]

            fidelity_ideal[(method, circuit)] = state_fidelity(result_ideal, results_curr_ideal)
            fidelity_noise[(method, circuit)] = state_fidelity(result_ideal, results_curr)
            fidelity_noise_noise[(method, circuit)] = state_fidelity(result_noise, results_curr)

            print("$$$$$$$$$$$$")
            print()
            print("My metric ideal ideal -", comp_ideal[(method, circuit)])
            print("My metric ideal noise -", comp_noise[(method, circuit)])
            print("My metric noise noise -", comp_noise_noise[(method, circuit)])
            print("Fidelity ideal ideal -", fidelity_ideal[(method, circuit)])
            print("Fidelity ideal noise -", fidelity_noise[(method, circuit)])
            print("Fidelity noise noise -", fidelity_noise_noise[(method, circuit)])
            print()
            print("$$$$$$$$$$$$")

    #
    #
    # comp_ideal = {}
    # comp_noise = {}
    # comp_noise_noise = {}
    #
    # fidelity_ideal = {}
    # fidelity_noise = {}
    # fidelity_noise_noise = {}
    #
    # for circuit in circuits:
    #     for method in methods:
    #         # if circuit == "1":
    #         result_ideal = results_ideal[("Baseline", circuit)]
    #         # print(result_ideal)
    #         results_curr_ideal = results_ideal[(method, circuit)]
    #
    #         results_curr = results_noise[(method, circuit)]
    #         # print(results_curr)
    #
    #         result_noise = results_noise[('Baseline', circuit)]
    #
    #         comp_ideal[(method, circuit)] = results_similarity(result_ideal, results_curr_ideal)
    #         comp_noise[(method, circuit)] = results_similarity(result_ideal, results_curr)
    #         comp_noise_noise[(method, circuit)] = results_similarity(result_noise, results_curr)
    #
    #         result_ideal = state_vectors[("Baseline", circuit)]
    #         # print(result_ideal)
    #         results_curr_ideal = state_vectors[(method, circuit)]
    #
    #         results_curr = state_vectors_noise[(method, circuit)]
    #         # print(results_curr)
    #
    #         result_noise = state_vectors_noise[('Baseline', circuit)]
    #
    #         fidelity_ideal[(method, circuit)] = state_fidelity(result_ideal, results_curr_ideal)
    #         fidelity_noise[(method, circuit)] = state_fidelity(result_ideal, results_curr)
    #         fidelity_noise_noise[(method, circuit)] = state_fidelity(result_noise, results_curr)
    #
    # print()
    # print()
    # log("")
    # print()
    #
    # print("My metric ideal - ideal")
    #
    # for c in comp_ideal:
    #     print(c, comp_ideal[c])
    #
    # print()
    #
    # print("My metric ideal - noise")
    #
    # for c in comp_noise:
    #     print(c, comp_noise[c])
    #
    # print()
    #
    # print("My metric nise - noise")
    #
    # for c in comp_noise_noise:
    #     print(c, comp_noise_noise[c])
    #
    # print()
    # print("#######################################################3")
    # print()
    #
    # print("Fidelity ideal - ideal")
    #
    # for c in fidelity_ideal:
    #     print(c, fidelity_ideal[c])
    #
    # print()
    #
    # print("Fidelity ideal - noise")
    #
    # for c in fidelity_noise:
    #     print(c, fidelity_noise[c])
    #
    # print()
    #
    # print("Fidelity nise - noise")
    #
    # for c in fidelity_noise_noise:
    #     print(c, fidelity_noise_noise[c])
    #
    # print()


# memory leak somewhere? check and fix!!!
# bo ram zzera...
if __name__ == '__main__':
    evaluate_errors()

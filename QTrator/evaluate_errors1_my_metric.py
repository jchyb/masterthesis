import subprocess


def evaluate_errors():
    SEPARATOR = ";"

    import os
    import datetime

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

    with open("benchmark_errors_results_my_metric.csv", "w") as f:
        f.write("method" + SEPARATOR + "file" + SEPARATOR)
        f.write("my_metric_ideal_ideal" + SEPARATOR)
        f.write("my_metric_ideal_noise" + SEPARATOR)
        f.write("my_metric_noise_noise" + SEPARATOR)
        f.write("hellinger_fidelity_ideal_ideal" + SEPARATOR)
        f.write("hellinger_fidelity_ideal_noise" + SEPARATOR)
        f.write("hellinger_fidelity_noise_noise")
        f.write("\n")

    # subprocess.call(['python3', 'evaluate_errors_subprocess_baseline_my_metric.py', "sat_n11", "Baseline"])
    #
    # for method in methods:
    #     if method != "Baseline":
    #         subprocess.call(['python3', 'evaluate_errors_subprocess_my_metric.py',  "sat_n11", method])

    # circuits = ["qft2",
    #             "qrng_n4",
    #             "deutsch_n2",
    #             "iswap_n2",
    #             "cat_state_n4",
    #             "1",
    #             "grover_n2",
    #             "qft_n4",
    #             "lpn_n5",
    #             "fredkin_n3",
    #             "qft4",
    #             "hs4_n4",
    #             "adder_n4",
    #             "linearsolver_n3",
    #             "qec_en_n5",
    #             "qaoa_n3",
    #             "simon_n6",
    #             "quantumwalks_n2",
    #             "bell_n4",
    #             "qft8",
    #             "multiply_n13"]

### cat_state_n22 and ghz_state_n23 entangle 22/23 qubits, so I dont know whether they will end in a reasonable amount of time
## todo try installing cuda or running than on rtx 3070
    # "cat_state_n22"
    # "ghz_state_n23"
    # "sat_n11"
    # "multiplier_n25"
    # "qft16",
    # "ising_n26"
    # "ising_n10"
    # "qft_n15"
    # qft_n20
    # dnn_n16

    circuits = [
                "grover"
                ]

    # circuits.sort()

    for circuit in circuits:

        subprocess.call(['python3', 'evaluate_errors_subprocess_baseline_my_metric.py', circuit, "Baseline"])

        for method in methods:
            if method != "Baseline":
                subprocess.call(['python3', 'evaluate_errors_subprocess_my_metric.py', circuit, method])


if __name__ == '__main__':
    evaluate_errors()

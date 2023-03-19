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

    with open("benchmark_errors_results.csv", "w") as f:
        f.write("method" + SEPARATOR + "file" + SEPARATOR)
        # f.write("my_metric_ideal_ideal" + SEPARATOR)
        # f.write("my_metric_ideal_noise" + SEPARATOR)
        # f.write("my_metric_noise_noise" + SEPARATOR)
        f.write("fidelity_ideal_ideal" + SEPARATOR)
        f.write("fidelity_ideal_noise" + SEPARATOR)
        f.write("fidelity_noise_noise")
        f.write("\n")

    # for circuit in circuits:
    #     subprocess.call(['python3', 'evaluate_errors_subprocess_baseline.py', circuit, "Baseline"])

#     skip = True
    for circuit in circuits:

        # if circuit == "tof_4":
        #     print("Skipping:", circuit)
        #     skip = False
        #     continue
        #
        # if skip:
        #     print("Skipping:", circuit)
        #     continue

        subprocess.call(['python3', 'evaluate_errors_subprocess_baseline.py', circuit, "Baseline"])

        for method in methods:
            if method != "Baseline":
                subprocess.call(['python3', 'evaluate_errors_subprocess.py', circuit, method])


if __name__ == '__main__':
    evaluate_errors()

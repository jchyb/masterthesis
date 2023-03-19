import os

from convert_qasm_to_qiskit import get_circuit_from_qasm_file

SEPARATOR = ";"


def gates_count(circuit):
    return "gates_count", circuit.size()


def depth(circuit):
    return "depth", circuit.depth()


def width(circuit):
    return "width", circuit.width()


def nonlocal_gates(circuit):
    return "nonlocal_gates", circuit.num_nonlocal_gates()


def connected_components(circuit):
    return "connected_components", circuit.num_connected_components()


def h_gates(circuit):
    return "h_gates", circuit.count_ops().get("h", 0)


def t_gates(circuit):
    counts = circuit.count_ops()
    return "t_gates", counts.get("t", 0) + counts.get("tdg", 0)


def x_gates(circuit):
    return "x_gates", circuit.count_ops().get("x", 0)


def y_gates(circuit):
    return "y_gates", circuit.count_ops().get("y", 0)


def z_gates(circuit):
    return "z_gates", circuit.count_ops().get("z", 0)


def s_gates(circuit):
    counts = circuit.count_ops()
    return "s_gates", counts.get("s", 0) + counts.get("sdg", 0)


def swap_gates(circuit):
    counts = circuit.count_ops()
    return "swap_gates", counts.get("swap", 0) + counts.get("cswap", 0)


def t_depth(circuit):
    return "t_depth", circuit.depth(filter_function=lambda x: x[0].name in ('t', 'tdg'))


def h_depth(circuit):
    return "h_depth", circuit.depth(filter_function=lambda x: x[0].name == 'h')


def control_gates(circuit):
    counts = circuit.count_ops()
    sum = 0
    for gate in counts:
        if gate.startswith("c"):
            sum += counts[gate]
    return "control_gates", sum


def u_gates(circuit):
    counts = circuit.count_ops()
    sum = 0
    for gate in counts:
        if gate in ("u", "u1", "u2", "u3"):
            sum += counts[gate]

    return "u_gates", sum


def n_qubits(circuit):
    return "n_cubits", circuit.num_qubits


metrics = [gates_count, depth, width, nonlocal_gates, connected_components, h_gates, control_gates, u_gates, n_qubits,
           swap_gates, t_gates, x_gates, y_gates, z_gates, s_gates, t_depth, h_depth]


def _unique_path(path):
    filename, extension = os.path.splitext(path)
    counter = 1

    while os.path.exists(path):
        path = filename + " (" + str(counter) + ")" + extension
        counter += 1

    return path

def evaluate_results(times):
    results = {}
    metrics_names = []
    names_collected = False
    for file in os.listdir("result_files/"):
        if file.endswith(".qasm"):
            try:
                method_name = file.split("_")[0]

                circuit = get_circuit_from_qasm_file("result_files/" + file)

                file_name = "_".join(file.split("_")[1:])
                results_method = {}
                for metric in metrics:
                    a, b = metric(circuit)
                    results_method[a] = b
                    if not names_collected:
                        metrics_names.append(a)

                # print(circuit.count_ops())
                names_collected = True
                results_method["file"] = file_name
                if method_name in results:
                    results[method_name][file_name] = results_method
                else:
                    results[method_name] = {}
                    results[method_name][file_name] = results_method
            except Exception as a:
                print("Exception")
                print(file)
                print(a)


    bench_res_filename = _unique_path("bench_res_csv/benchmark_results.csv")
    with open(bench_res_filename, "w") as f:
        f.write("method" + SEPARATOR + "transpilation_time" + SEPARATOR + "file")
        for metric_name in metrics_names:
            f.write(SEPARATOR + metric_name)
        f.write("\n")

        for method in results:
            #print(method)
            for filee in results[method]:
                #print(filee)
                if times is not None:
                    f.write(method + SEPARATOR + str(times[method][filee]) + SEPARATOR + filee)
                else:
                    f.write(method + SEPARATOR + str(-1) + SEPARATOR + filee)

                for metric_name in metrics_names:
                    f.write(SEPARATOR + str(results[method][filee][metric_name]))
                f.write("\n")

# moze na koncu jakies wykresy?

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

from convert_qasm_to_qiskit import get_circuit_from_qasm_file


def control_gates(circuit):
    counts = circuit.count_ops()
    sum = 0
    for gate in counts:
        if gate.startswith("c"):
            sum += counts[gate]
    return sum


BENCHMARK_FILE_METRICS = "benchmark_results.csv"

df_metrics = pd.read_csv(BENCHMARK_FILE_METRICS, sep=";")

df_metrics = df_metrics[df_metrics['method'] != 'Baseline']

df_metrics['method'] = df_metrics['method'].astype(str)
df_metrics['file'] = df_metrics['file'].astype(str)

df_metrics['file1'] = df_metrics['file'].apply(lambda x: x.replace('.qasm', ''))

metrics_to_consider = ['Gates count before',
                       'After - min',
                       'After - max',
                       'After - avg',
                       'Ratio',
                       'Control gates before',
                       'After - min',
                       'After - max',
                       'After - avg',
                       'Ratio']

for opt in metrics_to_consider:
    print("\\rotatebox{90}{" + opt + " } & ", end="")
print(" \\\\ \\hline")

files = df_metrics['file'].unique()
files.sort()

files = [a for a in files if a != "grover_5.qasm"]

for file in files:
    print(file.replace('.qasm', '').replace('_', '\\_'), end="")

    print(" & {} ".format(get_circuit_from_qasm_file("./benchmark_files/{}".format(file)).size()), end="")

    print(" & {} ".format(df_metrics[df_metrics['file'] == file]['gates_count'].min()), end="")

    print(" & {} ".format(df_metrics[df_metrics['file'] == file]['gates_count'].max()), end="")

    print(" & {} ".format(int(df_metrics[df_metrics['file'] == file]['gates_count'].mean().round(0))), end="")

    print(" & {}\\% ".format(
        (((df_metrics[df_metrics['file'] == file]['gates_count'].mean()) / get_circuit_from_qasm_file(
            "./benchmark_files/{}".format(file)).size()) * 100).round(0)), end="")

    print(" & {} ".format(control_gates(get_circuit_from_qasm_file("./benchmark_files/{}".format(file)))), end="")

    print(" & {} ".format(df_metrics[df_metrics['file'] == file]['control_gates'].min()), end="")

    print(" & {} ".format(df_metrics[df_metrics['file'] == file]['control_gates'].max()), end="")

    print(" & {} ".format(int(df_metrics[df_metrics['file'] == file]['control_gates'].mean().round(0))), end="")

    print(" & {}\\% ".format(
        (((df_metrics[df_metrics['file'] == file]['control_gates'].mean()) / control_gates(
            get_circuit_from_qasm_file("./benchmark_files/{}".format(file)))) * 100).round(0)), end="")

    print(" \\\\ \\hline")

# print(df_metrics.columns)

# print(df_metrics['gates_count'].unique())
#
# correlations = {}
#
# methods = df_metrics['method'].unique()
# methods.sort()
#
#
# for file in df_cd.file.unique():
#     print(file)
#     for metric in ['gates_count', 'depth', 'width',
#                    'nonlocal_gates', 'connected_components', 'h_gates', 'control_gates',
#                    'u_gates', 'n_cubits', 'swap_gates', 't_gates', 'x_gates', 'y_gates',
#                    'z_gates', 's_gates', 't_depth', 'h_depth']:
#         # print(file, metric)
#
#         # print(df_cd[df_cd.file == file]['hellinger_fidelity_ideal_noise'])
#         # print(df_cd[df_cd.file == file][metric])
#
#         correlations[(file, metric)] = df_cd[df_cd.file == file]['hellinger_fidelity_ideal_noise'].corr(
#             df_cd[df_cd.file == file][metric])
#
# files = [a[0] for a in correlations.keys() if a[0] not in ('grover','qec_en_n5')]
# metrics = [a[1] for a in correlations.keys()]
#
# have_everything = set(metrics)
#
# have_something = set()
#
# for file in files:
#     for metric in metrics:
#         if np.isnan(correlations[(file, metric)]):
#             if metric in have_everything:
#                 have_everything.remove(metric)
#         else:
#             have_something.add(metric)
#
# print(have_something)
#
# print(have_everything)
#
# print(correlations)
#
# metrics_to_consider = ['depth', 'control_gates', 'u_gates', 'x_gates', 'gates_count']
#
# print("benchmark file / metric & ", end="")
# for opt in metrics_to_consider:
#     print("\\rotatebox{90}{" + opt + " } & ", end="")
# print(" \\\\ \\hline")
#
# filees = list(set(files))
# filees.sort()
#
# metrics_avgs = {}
# metrics_avgs_count = {}
#
#
# for metric in metrics_to_consider:
#     metrics_avgs[metric] = 0.0
#     metrics_avgs_count[metric] = 0
#
# for file in filees:
#     print(file.replace("_", "\\_"), end="")
#     for metric in metrics_to_consider:
#         print(" & {}".format(
#             correlations[(file, metric)].round(2) if not np.isnan(correlations[(file, metric)]) else "X"), end="")
#         if not np.isnan(correlations[(file, metric)]):
#             metrics_avgs[metric] += correlations[(file, metric)].round(10)
#             metrics_avgs_count[metric] += 1
#
#     print(" \\\\ \\hline")
#
# for metric in metrics_to_consider:
#     metrics_avgs[metric] /= float(metrics_avgs_count[metric])
#
# print("average ", end="")
#
# for metric in metrics_to_consider:
#     print(" & {}".format(metrics_avgs[metric].round(3)),
#           end="")
# print(" \\\\ \\hline")

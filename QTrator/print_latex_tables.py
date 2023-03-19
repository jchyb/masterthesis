import pandas as pd
import matplotlib.pyplot as plt

import warnings

warnings.filterwarnings("ignore")

BENCHMARK_FILE = "benchmark_errors_results_my_metric.csv"

df = pd.read_csv(BENCHMARK_FILE, sep=";")

benchmark_files = list(set([item for subl in df[['file']].values.tolist() for item in subl]))
benchmark_files.sort()

optimizers = list(set([item for subl in df[['method']].values.tolist() for item in subl]))
optimizers.sort()


def print_table(metric):
    print("method\\\\benchmark file & ", end="")

    for opt in optimizers:
        if "ideal_ideal" not in metric or opt != 'Baseline':
            print("\\rotatebox{90}{" + opt + " } & ", end="")

    print("\\\\ \\hline")

    for file in benchmark_files:

        values = []

        for opt in optimizers:
            if "ideal_ideal" not in metric or opt != 'Baseline':
                if "hellinger" in metric:
                    values.append(df[df['file'] == file][df['method'] == opt][metric].astype(float).round(3).values[0])
                else:
                    values.append(
                        int(df[df['file'] == file][df['method'] == opt][metric].astype(float).round(0).values[0]))

        values = list(set(values))
        values.sort()

        # print(values)
        if "hellinger" not in metric:
            red_limit = values[-3 if len(values) >= 3 else -(len(values))]
            green_limit = values[2 if len(values) >= 3 else (len(values) - 1)]
        else:
            green_limit = values[-3 if len(values) >= 3 else -(len(values))]
            red_limit = values[2 if len(values) >= 3 else (len(values) - 1)]

        print()
        print(file.replace("_", "\\_"), end="")
        # for opt in optimizers:
        #     if "ideal_ideal" not in metric or opt != 'Baseline':
        #         print(" & ", end="")
        #
        #         if "hellinger" in metric:
        #             prefix = ""
        #
        #             if df[df['file'] == file][df['method'] == opt][metric].astype(float).round(3).values[
        #                 0] >= green_limit:
        #                 prefix = "\\cellcolor{green!25}"
        #             elif df[df['file'] == file][df['method'] == opt][metric].astype(float).round(3).values[
        #                 0] <= red_limit:
        #                 prefix = "\\cellcolor{red!25}"
        #
        #             print(prefix + str(
        #                 df[df['file'] == file][df['method'] == opt][metric].astype(float).round(3).values[0]), end="")
        #         else:
        #
        #             prefix = ""
        #
        #             if int(df[df['file'] == file][df['method'] == opt][metric].astype(float).round(0).values[
        #                        0]) <= green_limit:
        #                 prefix = "\\cellcolor{green!25}"
        #             elif int(df[df['file'] == file][df['method'] == opt][metric].astype(float).round(0).values[
        #                          0]) >= red_limit:
        #                 prefix = "\\cellcolor{red!25}"
        #
        #             print(prefix + str(
        #                 int(df[df['file'] == file][df['method'] == opt][metric].astype(float).round(0).values[0])),
        #                   end="")
        print(" & {}".format(df[df['file'] == file][metric].mean().astype(float).round(3)), end="")
        print(" \\\\ \\hline")

    for opt in optimizers:
        if "ideal_ideal" not in metric or opt != 'Baseline':
            if "hellinger" in metric:
                print(" & {}".format(df[df['method'] == opt][metric].mean().astype(float).round(3)), end="")


# print_table('my_metric_ideal_ideal')
# print_table('my_metric_ideal_noise')
# print_table('hellinger_fidelity_ideal_ideal')
print_table('hellinger_fidelity_ideal_noise')

import pandas as pd
import matplotlib.pyplot as plt

BENCHMARK_FILE = "benchmark_errors_results_my_metric.csv"

df = pd.read_csv(BENCHMARK_FILE, sep=";")

# print(df)

benchmark_files = list(set([item for subl in df[['file']].values.tolist() for item in subl]))
benchmark_files.sort()

print(benchmark_files)

metrics = ['hellinger_fidelity_ideal_ideal','hellinger_fidelity_ideal_noise','hellinger_fidelity_noise_noise']

metrics.sort()

print(metrics)

alle = len(benchmark_files) * len(metrics)

i = 0

for file in benchmark_files:
    for metric in metrics:
        i += 1
        print(i, "/", alle)
        temp_df = df[df['file'] == file][['method', metric]].sort_values('method',
                                                                         key=lambda x: x,
                                                                         ascending=True)
        temp_df[metric] = temp_df[metric].astype(float).round(3)
        plt.tight_layout()
        # plt.subplots_adjust(top=30, bottom=20)
        # temp_df['file'] = temp_df['file'].str.replace('.qasm', '')
        ax = temp_df.plot.bar(x="method", figsize=(10, 10), position=1.0)

        for container in ax.containers:
            ax.bar_label(container)

        plt.tight_layout()
        plt.savefig("charts_hellinger/" + file.replace(".qasm", "") + "_" + metric + ".jpg", dpi=300)
        plt.close()
        # break

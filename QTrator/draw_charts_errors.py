import pandas as pd
import matplotlib.pyplot as plt

BENCHMARK_FILE = "benchmark_errors_results.csv"

df = pd.read_csv(BENCHMARK_FILE, sep=";")

# print(df)

benchmark_files = list(set([item for subl in df[['file']].values.tolist() for item in subl]))
benchmark_files.sort()

print(benchmark_files)

metrics = list(filter(lambda x: x not in ('method', 'file'),
                      df.columns.values.tolist()))

metrics.sort()

print(metrics)

alle = len(benchmark_files) * len(metrics)

i = 0

for file in benchmark_files:
    if file == "sat_n11":
        for metric in metrics:
            i += 1
            print(i, "/", alle)
            temp_df = df[df['file'] == file][['method', metric]].sort_values('method',
                                                                             key=lambda x: x,
                                                                             ascending=True)

            #print(temp_df.dtypes)
            temp_df[metric] = temp_df[metric].astype(float).round(3)
            plt.rcParams.update({'font.size': 16})

            #temp_df[metric].round(3)
            plt.tight_layout()
            # plt.subplots_adjust(top=30, bottom=20)
            # temp_df['file'] = temp_df['file'].str.replace('.qasm', '')
            ax = temp_df.plot.bar(x="method", figsize=(10, 10), position=1.0)

            for container in ax.containers:
                ax.bar_label(container)

            plt.tight_layout()
            plt.savefig("charts_errors/" + file.replace(".qasm", "") + "_" + metric + ".jpg", dpi=300)
            plt.close()
            # break

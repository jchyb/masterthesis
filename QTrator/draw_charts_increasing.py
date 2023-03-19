import pandas as pd
import matplotlib.pyplot as plt

BENCHMARK_FILE = "benchmark_results.csv"

df = pd.read_csv(BENCHMARK_FILE, sep=";")

# print(df)

benchmark_methods = list(set([item for subl in df[['method']].values.tolist() for item in subl]))
benchmark_methods.sort()

# print(benchmark_files)

metrics = list(filter(lambda x: x not in ('method', 'file'),
                      df.columns.values.tolist()))

metrics.sort()

# print(metrics)


for file in benchmark_methods:
    for metric in metrics:
        temp_df = df[df['method'] == file][
            (df['file'] == 'qft2.qasm') | (df['file'] == 'qft4.qasm') | (df['file'] == 'qft8.qasm') | (df[
                                                                                                           'file'] == 'qft16.qasm')][
            ['file', metric]].sort_values('file',
                                          key=lambda x: x.str.slice(3, -5).astype(
                                              'Int64'),
                                          ascending=True)
        temp_df.round(3)
        plt.tight_layout()
        # plt.subplots_adjust(top=30, bottom=20)
        temp_df['file'] = temp_df['file'].str.replace('.qasm', '')
        temp_df.plot.bar(x="file", figsize=(10, 10), position=1.0)
        plt.rcParams.update({'font.size': 26})

        plt.tight_layout()
        plt.savefig("charts_increasing/a_" + file.replace(".qasm","") + "_" + metric + ".jpg", dpi=300)
        plt.close()
        # break

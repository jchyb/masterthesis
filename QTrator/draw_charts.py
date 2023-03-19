
def draw_charts():

    import pandas as pd
    import matplotlib.pyplot as plt

    BENCHMARK_FILE = "benchmark_results.csv"

    df = pd.read_csv(BENCHMARK_FILE, sep=";")

    # print(df)

    benchmark_files = list(set([item for subl in df[['file']].values.tolist() for item in subl]))
    benchmark_files.sort()

    # print(benchmark_files)

    metrics = list(filter(lambda x: x not in ('method', 'file'),
                          df.columns.values.tolist()))

    metrics.sort()

    # print(metrics)

    for file in benchmark_files:
        for metric in metrics:
            temp_df = df[df['file'] == file][['method', metric]].sort_values('method', ascending=True)
            # print(temp_df)
            #plt.figure(num=1, clear=True)
            a = temp_df.plot.bar(x="method", figsize=(10, 10), position=1.0, backend="matplotlib")
            plt.tight_layout()
            plt.savefig("charts/" + file.replace(".qasm", "") + "_" + metric + ".jpg", dpi=300)
            plt.close('all')
            # break
            plt.clf()
            plt.cla()
            del a

if __name__ == '__main__':
    draw_charts()
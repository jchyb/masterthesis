def calculate_averages():

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

    res = {}

    for file in benchmark_methods:
        for metric in metrics:
            if not metric in res:
                res[metric] = []

            temp_df = df[df['method'] == file][metric].mean()
            #print(type(temp_df))
            res[metric].append((file, temp_df))

    for m in res:
        print("#############")
        print()
        print(m)
        print()
        l = res[m]
        l.sort(key=lambda x: x[1])

        for i in l:
            print(i[0], i[1])



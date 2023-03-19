import pandas as pd
import matplotlib.pyplot as plt

BENCHMARK_FILE = "benchmark_errors_results_my_metric.csv"

df = pd.read_csv(BENCHMARK_FILE, sep=";")


def save_boxplot(method):
    time_df = df[['method', method]]

    ax = time_df.boxplot(by='method', figsize=(19, 9), showmeans=True)

    ax.set_yscale('log')

    fig = ax.get_figure()

    fig.suptitle('')
    plt.tight_layout()

    plt.savefig("{}_boxplot.jpg".format(method), dpi=300)


save_boxplot('my_metric_ideal_ideal')
save_boxplot('my_metric_ideal_noise')
save_boxplot('hellinger_fidelity_ideal_ideal')
save_boxplot('hellinger_fidelity_ideal_noise')

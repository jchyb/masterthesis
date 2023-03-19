import sys
import matplotlib.pyplot as plt
import pandas as pd

file = sys.argv[1]

metric = sys.argv[2]

print(file, metric)

BENCHMARK_FILE = "benchmark_results.csv"

df = pd.read_csv(BENCHMARK_FILE, sep=";")

temp_df = df[df['file'] == file][['method', metric]].sort_values('method', ascending=True)
a = temp_df.plot.bar(x="method", figsize=(10, 10), position=1.0, backend="matplotlib")
plt.tight_layout()
plt.savefig("charts/" + file.replace(".qasm", "") + "_" + metric + ".jpg", dpi=300)
plt.close('all')


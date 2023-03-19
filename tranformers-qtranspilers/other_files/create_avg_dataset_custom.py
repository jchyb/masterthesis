import random
import json
import os
from collections import defaultdict
import pandas as pd
import numpy as np


def add_missing_zeroes(opt: str):
    return '0' * (5 - len(opt)) + opt

dataset = {}
all_cases = []

BENCHMARK_FILES = [f"bench_res_csv/{i}" for i in os.listdir("bench_res_csv") if os.path.isfile(f"bench_res_csv/{i}")]
print(BENCHMARK_FILES)

dfs = [pd.read_csv(b_file, sep=";") for b_file in BENCHMARK_FILES]

benchmark_files = list(set([item for subl in dfs[0][['file']].values.tolist() for item in subl]))
benchmark_files.sort()

labels = defaultdict(lambda: 0)

for file in benchmark_files:
    control_gates_sum = defaultdict(lambda: 0)
    data_amounts = defaultdict(lambda: 0)
    values = defaultdict(lambda: [])

    for idx, df in enumerate(dfs):
        for _, i in df[df['file'] == file].iterrows():
            method = i['method']
            control_gates_sum[method] += i['control_gates']
            data_amounts[method] += 1
            values[method].append(i['control_gates'])
        # except e:
        #     print(e)
        #     print(f"File {file} data not found in {BENCHMARK_FILES[idx]}")

    min_val = float('inf')
    stdev = 0
    min_opt = '00000'
    for opt in control_gates_sum.keys():
        val = np.average(values[opt])
        if val < min_val:
            min_val = val
            min_opt = opt
            stdev = np.std(values[opt])

    label = min_opt
    new_case = {}
    new_case["label"] = add_missing_zeroes(str(label))
    new_case["average"] = min_val
    new_case["stdev"] = stdev
    new_case["file"] = file
    new_case["amounts"] = data_amounts[label]
    labels[new_case["label"]] += 1
    with open("benchmark_files/{}".format(file), "r") as f:
        s = f.read()
        new_case["text"] = s.replace('\n', ' ')

    all_cases.append(new_case)

split = 1 # 0.9
test_max_i = int(len(all_cases) * split)

with open('custom_train_x.txt', "w") as f:
    for i in range(0, test_max_i):
        f.write(all_cases[i]['text'] + "\n")

with open('custom_train_y.txt', "w") as f:
    for i in range(0, test_max_i):
        f.write(str(all_cases[i]['label']) + "\n")

with open('custom_result_data.csv', "w") as f:
    for i in range(0, test_max_i):
        f.write(str(all_cases[i]['file']) + " ")
        f.write(str(all_cases[i]['label']) + " ")
        f.write(str(all_cases[i]['average']) + " ")
        f.write(str(all_cases[i]['stdev']) + " ")
        f.write(str(all_cases[i]['amounts']) + " ")

        f.write("\n")

dataset_train = {}

dataset_train["data"] = all_cases[test_max_i:]

dataset["data"] = all_cases

with open('dataset_train.json', "w") as f:
    json.dump(dataset_train, f)

with open('dataset.json', "w") as f:
    json.dump(dataset, f)

print(labels)

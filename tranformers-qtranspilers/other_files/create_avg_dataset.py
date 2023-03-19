import random
import json
import os

import pandas as pd

dataset = {}

all_cases = []

BENCHMARK_FILES = [f"bench_res_csv/{i}" for i in os.listdir("bench_res_csv") if os.path.isfile(f"bench_res_csv/{i}")]
print(BENCHMARK_FILES)

dfs = [pd.read_csv(b_file, sep=";") for b_file in BENCHMARK_FILES]

benchmark_files = list(set([item for subl in dfs[0][['file']].values.tolist() for item in subl]))
benchmark_files.sort()

labels = {0: 0, 1: 0, 2: 0}

for file in benchmark_files:
    control_gates_qiskit_sum = 0
    control_gates_rpo_sum = 0
    control_gates_rpoqiskit_sum = 0
    data_amount = 0

    for idx, df in enumerate(dfs):
        try:
            control_gates_qiskit_sum += df[df['file'] == file][df['method'] == 'QiskitLevel3']['control_gates'].values[0]
            control_gates_rpo_sum += df[df['file'] == file][df['method'] == 'RPOLevel3Pure']['control_gates'].values[0]
            control_gates_rpoqiskit_sum += df[df['file'] == file][df['method'] == 'l3rpopurel3']['control_gates'].values[0]
            data_amount += 1
        except:
            print(f"File {file} data not found in {BENCHMARK_FILES[idx]}")
    
    if data_amount == 0:
        continue
    
    control_gates_qiskit = float(control_gates_qiskit_sum) / data_amount
    control_gates_rpo = float(control_gates_rpo_sum) / data_amount
    control_gates_rpoqiskit = float(control_gates_rpoqiskit_sum) / data_amount

    label = 0

    if control_gates_rpo < control_gates_qiskit:
        label = 1

        if control_gates_rpoqiskit < control_gates_rpo:
            label = 2

    elif control_gates_rpoqiskit < control_gates_qiskit:
        label = 2

    new_case = {}
    new_case["label"] = label
    labels[label] += 1
    with open("benchmark_files/{}".format(file), "r") as f:
        s = f.read()
        new_case["text"] = s.replace('\n', ' ')

    all_cases.append(new_case)
    

split = 1 # 0.9
test_max_i = int(len(all_cases) * split)

labels_trin = {}
labels_trin[0] = 0
labels_trin[1] = 0
labels_trin[2] = 0

labels_test = {}
labels_test[0] = 0
labels_test[1] = 0
labels_test[2] = 0

with open('train_x.txt', "w") as f:
    for i in range(0, test_max_i):
        f.write(all_cases[i]['text'] + "\n")

with open('train_y.txt', "w") as f:
    for i in range(0, test_max_i):
        labels_trin[all_cases[i]['label']] += 1
        f.write(str(all_cases[i]['label']) + "\n")


with open('test_x.txt', "w") as f:
    for i in range(test_max_i, len(all_cases)):
        f.write(all_cases[i]['text'] + "\n")

with open('test_y.txt', "w") as f:
    for i in range(test_max_i, len(all_cases)):
        labels_test[all_cases[i]['label']] += 1
        f.write(str(all_cases[i]['label']) + "\n")


dataset_test = {}
dataset_train = {}

dataset_test["data"] = all_cases[:test_max_i]
dataset_train["data"] = all_cases[test_max_i:]

dataset["data"] = all_cases

with open('dataset_test.json', "w") as f:
    json.dump(dataset_test, f)

with open('dataset_train.json', "w") as f:
    json.dump(dataset_train, f)

with open('dataset.json', "w") as f:
    json.dump(dataset, f)

print(labels)

print(labels_trin)

print(labels_test)

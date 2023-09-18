# Modified from the transformers_qtranspilers project.
# 
# Generates a dataset using data found in the gen_data subdirectories
# (using gen_data/<subdirectory>/bench_res_csv and gen_data/<subdirectory>/benchmark_files).
# 

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

# BENCHMARK_FILES = [f"bench_res_csv/{i}" for i in os.listdir("bench_res_csv") if os.path.isfile(f"bench_res_csv/{i}")]
#
BENCHMARK_FILES = [[f"gen_data/{j}/bench_res_csv/{i}" for i in os.listdir(f"gen_data/{j}/bench_res_csv") if os.path.isfile(f"gen_data/{j}/bench_res_csv/{i}")] for j in os.listdir("gen_data")]

print(BENCHMARK_FILES)

dfs = [[pd.read_csv(b_file, sep=";") for b_file in b_set] for b_set in BENCHMARK_FILES]

benchmark_files = [list(set([item for subl in dfs[i][0][['file']].values.tolist() for item in subl])) for i in range(len(dfs))]
# benchmark_files.sort()

print(benchmark_files)

labels = defaultdict(lambda: 0)
all_cases = []
best_cases = []

for file_idx, dfs in enumerate(dfs):
    for file in benchmark_files[file_idx]:
        control_gates_sum = defaultdict(lambda: 0)
        data_amounts = defaultdict(lambda: 0)
        cgates_values = defaultdict(lambda: [])
        depth_values = defaultdict(lambda: [])

        for idx, df in enumerate(dfs):
            for _, i in df[df['file'] == file].iterrows():
                method = i['method']
                control_gates_sum[method] += i['control_gates']
                data_amounts[method] += 1
                cgates_values[method].append(i['control_gates'])
                depth_values[method].append(i['depth'])

        min_sum = []
        min_depth = []
        min_control = []
        for opt in control_gates_sum.keys():
            sum = np.average(cgates_values[opt]) + np.average(depth_values[opt]) # metric
            new_case = {}
            new_case["opt"] = add_missing_zeroes(str(opt))

            if new_case["opt"][3] == '1' or new_case["opt"][4] == '0':
                continue # removes some configurations !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            new_case["opt"] = new_case["opt"][:3]

            new_case["cgates_average"] = np.average(cgates_values[opt])
            new_case["cgates_stdev"] = np.std(cgates_values[opt])
            new_case["depth_average"] = np.average(depth_values[opt])
            new_case["depth_stdev"] = np.std(depth_values[opt])
            new_case["file"] = str(file_idx) + "/" + file
            new_case["amounts"] = len(depth_values[opt])
            all_cases.append(new_case)
            
            min_sum.append((sum, new_case["opt"]))
            min_depth.append((new_case["depth_average"], new_case["opt"]))
            min_control.append((new_case["cgates_average"], new_case["opt"]))
        min_sum.sort()
        min_control.sort()
        min_depth.sort()
        new_case = {}
        new_case["sum_labels"] = min_sum
        new_case["depth_labels"] = min_depth
        new_case["control_labels"] = min_control
        with open(f"gen_data/{file_idx + 1}/" + file.replace("__", '/'), "r") as f:
            s = f.read()
            new_case["text"] = s.replace('\n', ' ')

        best_cases.append(new_case)

split = 1 # 0.9
test_max_i = int(len(best_cases) * split)

# Filtering "rare" cases
passed = False
LIMIT = 50
while (not passed):
    labels_sum = defaultdict(lambda: 0)
    labels_control = defaultdict(lambda: 0)
    labels_depth = defaultdict(lambda: 0)
    for i in best_cases: # count
        labels_sum[i["sum_labels"][0][1]] += 1
        labels_control[i["control_labels"][0][1]] += 1
        labels_depth[i["depth_labels"][0][1]] += 1
    
    sum_remove = list(map(lambda a: a[0], filter(lambda a: a[1] < LIMIT, list(labels_sum.items()))))
    control_remove = list(map(lambda a: a[0], filter(lambda a: a[1] < LIMIT, list(labels_control.items()))))
    depth_remove = list(map(lambda a: a[0], filter(lambda a: a[1] < LIMIT, list(labels_depth.items()))))
    for i in best_cases:
        i["sum_labels"] = list(filter( lambda a: a[1] not in sum_remove, i["sum_labels"]))
        i["control_labels"] = list(filter( lambda a: a[1] not in control_remove, i["control_labels"]))
        i["depth_labels"] = list(filter(lambda a: a[1] not in depth_remove, i["depth_labels"]))
    passed = len(sum_remove) == 0 and len(control_remove) == 0 and len(depth_remove) == 0
        
labels_trin = defaultdict(lambda: 0)

with open('custom_train_x.txt', "w") as f:
    for i in range(0, test_max_i):
        f.write(best_cases[i]['text'] + "\n")

with open('custom_train_sum_y.txt', "w") as f:
    for i in range(0, test_max_i):
        labels_trin[best_cases[i]['sum_labels'][0][1]] += 1
        f.write(str(best_cases[i]['sum_labels'][0][1]) + "\n")
with open('custom_train_depth_y.txt', "w") as f:
    for i in range(0, test_max_i):
        labels_trin[best_cases[i]['depth_labels'][0][1]] += 1
        f.write(str(best_cases[i]['depth_labels'][0][1]) + "\n")
with open('custom_train_control_y.txt', "w") as f:
    for i in range(0, test_max_i):
        labels_trin[best_cases[i]['control_labels'][0][1]] += 1
        f.write(str(best_cases[i]['control_labels'][0][1]) + "\n")


with open("custom_bench_res_avg.csv", "w") as f:
    f.write("file,opt,cgates_average,cgates_stdev,depth_average,depth_stdev,amounts\n")
    for i in all_cases:
        f.write(str(i['file']) + ",")
        f.write(str(i['opt']) + ",")
        f.write(str(i['cgates_average']) + ",")
        f.write(str(i['cgates_stdev']) + ",")
        f.write(str(i['depth_average']) + ",")
        f.write(str(i['depth_stdev']) + ",")
        f.write(str(i['amounts']))
        f.write("\n")

dataset_test = {}
dataset_train = {}

dataset_test["data"] = best_cases[:test_max_i]
dataset_train["data"] = best_cases[test_max_i:]

dataset["data"] = best_cases

with open('dataset_test.json', "w") as f:
    json.dump(dataset_test, f)

with open('dataset_train.json', "w") as f:
    json.dump(dataset_train, f)

with open('dataset.json', "w") as f:
    json.dump(dataset, f)

def countLabels(text):
    labels = defaultdict(lambda: 0)
    for i in best_cases:
        labels[i[text][0][1]] += 1
    return labels


sum_labels = countLabels("sum_labels")
depth_labels = countLabels("depth_labels")
control_labels = countLabels("control_labels")

print("sum_labels")
print(sum_labels)
print("\n")
print("depth_label")
print(depth_labels)
print("\n")
print("control_label")
print(control_labels)
print("\n")
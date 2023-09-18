import random
import json
import os
from collections import defaultdict
import numpy as np

import pandas as pd

dataset = {}

BENCHMARK_FILES = [f"bench_res_csv/{i}" for i in os.listdir("bench_res_csv") if os.path.isfile(f"bench_res_csv/{i}")]
print(BENCHMARK_FILES)

dfs = [pd.read_csv(b_file, sep=";") for b_file in BENCHMARK_FILES]

benchmark_files = list(set([item for subl in dfs[0][['file']].values.tolist() for item in subl]))
benchmark_files.sort()

labels = defaultdict(lambda: 0)
all_cases = []
best_cases = []

def optToLabel(label):
    ret_label = ''
    if label == 'l3rpol3': ret_label = '0'
    elif label == 'RPOLevel3Pure': ret_label = '1'
    else: ret_label = label
    return ret_label

for file in benchmark_files:
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
    
    min_sum = float('inf')
    min_sum_opt = 'null'
    min_depth = float('inf')
    min_depth_opt = 'null'
    min_control = float('inf')
    min_control_opt = 'null'
    for opt in control_gates_sum.keys():
        sum = np.average(cgates_values[opt]) + np.average(depth_values[opt]) # metric
        new_case = {}
        new_case["opt"] = opt
        new_case["cgates_average"] = np.average(cgates_values[opt])
        new_case["cgates_stdev"] = np.std(cgates_values[opt])
        new_case["depth_average"] = np.average(depth_values[opt])
        new_case["depth_stdev"] = np.std(depth_values[opt])
        new_case["file"] = file
        new_case["amounts"] = len(depth_values[opt])
        all_cases.append(new_case)

        if sum < min_sum:
            min_sum = sum
            min_sum_opt = opt
        if new_case["depth_average"] < min_depth:
            min_depth = new_case["depth_average"]
            min_depth_opt = opt
        if new_case["cgates_average"] < min_control:
            min_control = new_case["cgates_average"]
            min_control_opt = opt
    

    new_case = {}
    new_case["sum_label"] = optToLabel(min_sum_opt)
    new_case["depth_label"] = optToLabel(min_depth_opt)
    new_case["control_label"] = optToLabel(min_control_opt)
    with open(file.replace("__", '/'), "r") as f:
        s = f.read()
        new_case["text"] = s.replace('\n', ' ')

    best_cases.append(new_case)
    

split = 1 # 0.9
test_max_i = int(len(best_cases) * split)

labels_trin = defaultdict(lambda: 0)
labels_test = defaultdict(lambda: 0)

with open('train_x.txt', "w") as f:
    for i in range(0, test_max_i):
        f.write(best_cases[i]['text'] + "\n")

with open('train_sum_y.txt', "w") as f:
    for i in range(0, test_max_i):
        labels_trin[best_cases[i]['sum_label']] += 1
        f.write(str(best_cases[i]['sum_label']) + "\n")
with open('train_depth_y.txt', "w") as f:
    for i in range(0, test_max_i):
        labels_trin[best_cases[i]['depth_label']] += 1
        f.write(str(best_cases[i]['depth_label']) + "\n")
with open('train_control_y.txt', "w") as f:
    for i in range(0, test_max_i):
        labels_trin[best_cases[i]['control_label']] += 1
        f.write(str(best_cases[i]['control_label']) + "\n")

# with open('normal_result_data.csv', "w") as f:
#     f.write("file,label,average,stdev,amounts\n")
#     for i in range(0, test_max_i):
#         f.write(str(best_cases[i]['file']) + " ")
#         f.write(str(best_cases[i]['label']) + " ")
#         f.write(str(best_cases[i]['average']) + " ")
#         f.write(str(best_cases[i]['stdev']) + " ")
#         f.write(str(best_cases[i]['amounts']))
#         f.write("\n")

with open("bench_res_avg.csv", "w") as f:
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
        labels[i[text]] += 1
    return labels


sum_labels = countLabels("sum_label")
depth_labels = countLabels("depth_label")
control_labels = countLabels("control_label")

print("sum_labels")
print(sum_labels)
print("\n")
print("depth_labels")
print(depth_labels)
print("\n")
print("control_label")
print(control_labels)
print("\n")
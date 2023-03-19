import os

benchmark_files_list = os.listdir("benchmark_files/")
benchmark_files_list.sort()

for i in benchmark_files_list:
    print(i)

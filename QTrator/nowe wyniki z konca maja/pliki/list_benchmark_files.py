import os

benchmark_files_list = os.listdir("a/")
benchmark_files_list.sort()

for i in benchmark_files_list:
    print('"' + i.replace(".qasm", "") + '",')



# basis_test_n4
# qpe_n9
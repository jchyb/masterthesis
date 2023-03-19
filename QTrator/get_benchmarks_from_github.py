import os
import shutil

for root, subdirs, files in os.walk("/home/wiktor/Documents/mgr_comparator-master/benchmark_files_from_github/from_github"):

    for filename in files:
        file_path = os.path.join(root, filename)
        if file_path.endswith(".qasm"):
            print('\t- file %s (full path: %s)' % (filename, file_path))
            shutil.copyfile(file_path, "./benchmark_files_from_github/qasm/" + filename)


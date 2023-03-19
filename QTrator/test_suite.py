# import pickle
#
# with open('baseline_dict.pickle', 'rb') as handle:
#     baseline_dict = pickle.load(handle)

max_val = 0

for_what = -1

shots = 1024

for i in range(0, shots + 1):
    if i*i / 2 + (shots - i) * (shots - i) / 2 > max_val:
        max_val = i*i / 2 + (shots - i) * (shots - i) / 2
        for_what = i

print(max_val)

print(for_what)

print(1024*1024)
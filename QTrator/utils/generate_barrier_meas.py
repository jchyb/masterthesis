n = 60
q_name = "q"
c_name = ""

barr_string = ""

for i in range(n):
    if barr_string:
        barr_string += ",{}[{}]".format(q_name, i)
    else:
        barr_string += "{}[{}]".format(q_name, i)

print("barrier {};".format(barr_string))

# for i in range(n):
#     print("measure {}[{}] -> {}[{}];".format(q_name, i, c_name, i))
#
#

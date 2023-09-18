# script used to filter out redundant test passes  
with open("custom_bench_res_avg_filtered.csv", "w") as filew:
    with open("custom_prelim\custom_bench_res_avg.csv", "r") as file:
        filew.write(file.readline())
        for line in file:
            parts = line.split(',')
            print(parts[1])
            if parts[1][3] == '1':
                pass
            else:
                filew.write(line.replace("," + parts[1], "," + parts[1][:3] + parts[1][4:]))

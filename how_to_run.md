
Running dataset for pre-made optimizers (in the thesis referred to as the selective method):
1. Set "test generative optimizers" in benchmark_configuration.yml to `false`
2. create benchmark_files_after
3. `python tranformers-qtranspilers\other_files\generate_random_files.py` (note: I used Qiskit version `0.39.4` for this, other commands were executed using `0.41.0` - the generated files by the other qiskit are different, notably lacking custom gates definitions - we did not want them)
4.  rename benchmark_files_after to benchmark_files
5. `python QTrator\run_benchmark.py` executed N times (for each one a different test is executed and saved to a file in `bench_res_csv` directory)
6. `python tranformers-qtranspilers\other_files\create_avg_dataset.py`

Running "custom" optimizers (in the thesis referred to as the compositive method):
1. Set "test generative optimizers" in benchmark_configuration.yml to `true`
2. create benchmark_files_after
3. `python tranformers-qtranspilers\other_files\generate_random_files.py` (note: I used Qiskit version `0.39.4` for this, other commands were executed using `0.41.0` - the generated files by the other qiskit are different, notably lacking custom gates definitions - we did not want them)
4. rename `benchmark_files_after` to `benchmark_files`
5. `python QTrator\run_benchmark.py` executed N times (for each one a different test is executed and saved to a file in `bench_res_csv` directory)
6. Create `gen_data` directory, and move newly generated `benchmark_files` along with directories to numbered subdirectories (e.g. `gen_data\1\benchmark_files` and `gen_data\1\bench_res_csv`) - this was done as I ended up having multiple sets of benchmark files tested separately. 
7. `python tranformers-qtranspilers\other_files\create_avg_dataset_custom.py`
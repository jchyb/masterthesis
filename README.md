It primarly consists of heavily adjusted codes of https://github.com/wiktor145/QTrator and https://github.com/wiktor145/tranformers-qtranspilers.

* `ML_measurement.ipynb` contains implementations around the used models and measurements done for the purpose of evaluating their use.
* `Qtrator` contains the modified set of tools for quantum transpiler benchamarking based on https://github.com/wiktor145/QTrator , with modifications:
  * Changes to optimizers themselves (e.g. to the basis gate sets), with the aim of standardizing the options for better comparisons between the optimizers.
  * "custom" optimizers were added, where the optimization passes used can be adjusted with strings of zeroes and ones (otherwise they are kept similar to the `QiskitLevel3` transpiler). They can be found in the `QTrator/custom_optimizers` directory.
  * Some directories holding previous results/tests were removed, for readability.
  * The main QTrator code (`run_benchmark.py` and `evaluate_results.py`) was modified to:
    * allow multi-process execution to be able to obtain the results faster (for the purposes of which I turned of time measurement used in the transpilation time metric, now ignored). The multi-process execution can be turned off directly in-code by replacing the `pool.map` commands with the commented-out for-loops.
    * allow separate testing of the "custom" optimizers - adjusted with the option `test generative optimizers` set in `benchmark_configuration.yml`.
    * allow recursively accessing directories in `benchmark_results`, and name resulting files accordingly (by including `__` in place of `\` in path, to flatten the tree).
    * not overwrite results when evaluating - instead, it creates numbered files in `bench_res_csv` directory (like `bench_res_csv\benchmark_results (1).csv`)
* `tranformers-qtranspilers` contains a set of scripts that are able to transform the QTrator output to a dataset for use when training and testing related ML models, with following adjustments:
  * dataset-generating scripts were replaced with `create_avg_dataset_custom.py` (for the "custom" transpilers) and `create_avg_dataset.py` (for the regular transpilers) scripts. The main adjustment there is the fact that the dataset is calculated based on multiple different QTrator benchmarking runs, not just one. The related (hard-coded) metrics are averaged-out, and muliple datasets based on them are produced, with filenames titled accordingly. Additional sub-procedure to the "custom" version of the script is added that aims to filter out the "rarely" most-performant optmizers, with the lower-bound limit of 50, to improve training results.
  * unrelated files used previously were removed for readability.
* `ML_measurements.ipynb` contains the ML training and measurements code used in google colab.
* `custom_prelim` and `prelim` contain the datasets of the preliminary tests
* `final_ml_dataset` contains the dataset used when training ML models

Some things ended up being changed last-minute, like removing some passes of compositive methods. E.g. in the `tranformers-qtranspilers\other_files\create_avg_dataset_custom.py` file there is a subprocedure that aims to remove an optimization pass from consideration when creating final dataset. `cleanup_filter_custom.py` was used for similar reasons on the preliminary results.
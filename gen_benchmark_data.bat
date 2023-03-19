for /l %%x in (1, 1, 4) do (
   call python QTrator\run_benchmark.py
)
@REM call python tranformers-qtranspilers\other_files\create_avg_dataset.py

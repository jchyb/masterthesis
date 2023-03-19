import datetime
import multiprocessing

import yaml
from importlib import import_module
import os
import glob

from calculate_averages import calculate_averages
from custom_optimizers.custom_optimizer import custom_optimizer
from draw_charts1 import draw_charts
from evaluate_errors1 import evaluate_errors
from qasm_file_preparer import prepare_qasm_file, create_qasm_from_qiskit_circuit, create_qasms_from_suite
from evaluate_result import evaluate_results
import time

def log(message):
    print("{} - {}".format(datetime.datetime.now(), message))


def clear_files_directories():
    files = glob.glob('benchmark_files/*')
    for f in files:
        os.remove(f)

    files = glob.glob('result_files/*')
    for f in files:
        os.remove(f)

def task(data):
    opt = data[0]
    file = data[1]
    file_nr = data[2]
    backend = getattr(import_module(data[3]), data[4])()
    module = import_module(opt)
    log(file + " " + opt)
    for tries in range(5):
        try:
            optimizer_name = module.get_name()
            new_file = "result_files/" + optimizer_name + "_" + file
            if os.path.isfile(new_file):
                log("skipping " + new_file)
                break
            log(optimizer_name)
            optimizer = module.get_optimizer("benchmark_files/" + file, backend)
            start = time.time()
            optimizer.optimize_with_save(new_file)
            took = time.time() - start
            log(f"Time for {opt} {file} - {took}")
            break
        except Exception as e:
            log(f"Try {tries} failed")
            log(e)

def task_generative(data):
    opt = data[0]
    file = data[1]
    file_nr = data[2]
    backend = getattr(import_module(data[3]), data[4])()
    log(file + " " + opt)
    for tries in range(5):
        try:
            optimizer_name = opt
            new_file = "result_files/" + optimizer_name + "_" + file 
            if os.path.isfile(new_file):
                log("skipping " + new_file)
                break
            optimizer = custom_optimizer(opt, "benchmark_files/" + file, backend)
            start = time.time()
            optimizer.optimize_with_save(new_file)
            took = time.time() - start
            log(f"Time for {opt} {file} - {took}")
            break
        except Exception as e:
            log(f"Try {tries} failed")
            log(e)


if __name__ == '__main__':
    benchmark_start = time.time()

    configuration_file = "benchmark_configuration.yml"

    with open(configuration_file) as f:
        configuration = yaml.load(f, Loader=yaml.FullLoader)

    # if configuration['clean directories']:
    #     clear_files_directories()

    if configuration['use benchmark_files directory']:
        pass
    elif "test qasm file" in configuration:
        prepare_qasm_file(configuration['test qasm file'])
    elif "test qiskit circuit" in configuration:
        create_qasm_from_qiskit_circuit(configuration['test qiskit circuit'])
    elif "test suite" in configuration:
        create_qasms_from_suite(configuration['test qasm file'])
    else:
        raise Exception("No test to run!")  # todo change later

    be_module, be_func = configuration.get('quantum backend', 'qiskit.test.mock:FakeMelbourne').split(':')

    backend = getattr(import_module(be_module), be_func)()
    times = {}

    ######
    # files = glob.glob('result_files/*')
    # for f in files:
    #     os.remove(f)
    ######

    benchmark_files_list = os.listdir("benchmark_files/")
    benchmark_files_list.sort()
    modules = {}

    pool = multiprocessing.Pool(3)

    if configuration['test generative optimizers']:
        optimizers = []
        for i in range(32):
            opt_code = str(bin(i))[2:].zfill(5)
            optimizers.append(opt_code)

        arg_list = []
        for file_nr, file in enumerate(benchmark_files_list):
            if file.endswith(".qasm"):
                # log(f'File {file} - {file_nr + 1}/{len(benchmark_files_list)}')
                for opt in optimizers:
                    # log(opt)
                    arg_list.append((opt, file, file_nr, be_module, be_func))
                        # for tries in range(10):
                        # try:
                        #     optimizer_name = opt
                        #     new_file = "result_files/" + optimizer_name + "_" + file
                            
                        #     if os.path.isfile(new_file):
                        #         log("skipping " + new_file)
                        #         if optimizer_name in times:
                        #             times[optimizer_name][file] = -1
                        #         else:
                        #             times[optimizer_name] = {}
                        #             times[optimizer_name][file] = -1
                        #         break
                        #     optimizer = custom_optimizer(opt, "benchmark_files/" + file, backend)
                        #     start = time.time()
                        #     optimizer.optimize_with_save(new_file)
                        #     took = time.time() - start
                        #     log(f"Time for {opt} {file} - {took}")
                        #     # if optimizer.optimizer_name in times:
                        #     #     times[optimizer.optimizer_name][file] = took
                        #     # else:
                        #     #     times[optimizer.optimizer_name] = {}
                        #     #     times[optimizer.optimizer_name][file] = took
                        #     # break
                        # except Exception as e:
                        #     log(f"Try {tries} failed")
                        #     log(e)
        pool.map(task_generative, arg_list)
        # for i in arg_list: task_generative(i)
    else:
        optimizers = configuration['optimizers']

        for opt in optimizers:
            modules[opt] = import_module(opt)

        arg_list = []
        for file_nr, file in enumerate(benchmark_files_list):
            if file.endswith(".qasm"):
                # log(f'File {file} - {file_nr + 1}/{len(benchmark_files_list)}')
                for opt in optimizers:
                    arg_list.append((opt, file, file_nr, be_module, be_func))
                    # task((opt, file, file_nr, be_module, be_func))
                    # for tries in range(5):
                    #     try:
                    #         optimizer_name = modules[opt].get_name()
                    #         new_file = "result_files/" + optimizer_name + "_" + file
                            
                            # if os.path.isfile(new_file) or file_nr < 7000:
                            #     log("skipping " + new_file)
                            #     if optimizer_name in times:
                            #         times[optimizer_name][file] = -1
                            #     else:
                            #         times[optimizer_name] = {}
                            #         times[optimizer_name][file] = -1
                            #     break
                            # log(optimizer_name)
                            # optimizer = modules[opt].get_optimizer("benchmark_files/" + file, backend)
                            # start = time.time()
                            # optimizer.optimize_with_save(new_file)
                            # took = time.time() - start
                            # log(f"Time for {opt} {file} - {took}")
                            # if optimizer.optimizer_name in times:
                            #     times[optimizer.optimizer_name][file] = took
                            # else:
                            #     times[optimizer.optimizer_name] = {}
                            #     times[optimizer.optimizer_name][file] = took
                            # break
                        # except Exception as e:
                        #     log(f"Try {tries} failed")
                        #     log(e)
        pool.map(task, arg_list)
    pool.close()

    log("#############")
    log("#############")
    log("Evaluating results")

    evaluate_results(None)

    log(f'Benchmark summary time: {time.time() - benchmark_start}')

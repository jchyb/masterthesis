# -*- coding: utf-8 -*-

# This code is based on Qiskit.
# (C) Copyright IBM 2017, 2018.
#
# Modified by Wiktor Pawłowski
# (C) Copyright Wiktor Pawłowski, 2022.
#
# This code is licensed under the Apache License, Version 2.0. You may
# obtain a copy of this license in the LICENSE.txt file in the root directory
# of this source tree or at http://www.apache.org/licenses/LICENSE-2.0.
#
# Any modifications or derivative works of this code must retain this
# copyright notice, and modified files need to carry a notice indicating
# that they have been altered from the originals.

from qiskit.circuit.library import HGate, XGate
from qiskit.transpiler import PassManagerConfig, PassManager, TranspilerError
from qiskit.transpiler.coupling import CouplingMap
from qiskit.transpiler.passes import Unroller, SetLayout, CSPLayout, TrivialLayout, DenseLayout, NoiseAdaptiveLayout, \
    FullAncillaAllocation, EnlargeWithAncilla, ApplyLayout, CheckMap, BarrierBeforeFinalMeasurements, Unroll3qOrMore, \
    BasicSwap, StochasticSwap, LookaheadSwap, Depth, FixedPoint, CheckCXDirection, CXDirection, RemoveResetInZeroState, \
    InverseCancellation, CommutativeCancellation, Optimize1qGatesDecomposition, Optimize1qGates, CXCancellation, \
    RemoveDiagonalGatesBeforeMeasure
from qiskit.transpiler.preset_passmanagers import level_2_pass_manager

from convert_qasm_to_qiskit import get_circuit_from_qasm_file


def level_3_my_pass_manager(pass_manager_config: PassManagerConfig) -> PassManager:

    basis_gates = pass_manager_config.basis_gates
    coupling_map = pass_manager_config.coupling_map
    initial_layout = pass_manager_config.initial_layout
    layout_method = pass_manager_config.layout_method or 'dense'
    routing_method = pass_manager_config.routing_method or 'stochastic'
    seed_transpiler = pass_manager_config.seed_transpiler
    backend_properties = pass_manager_config.backend_properties

    # 1. Unroll to the basis first, to prepare for noise-adaptive layout
    _unroll = Unroller(basis_gates)

    # 2. Layout on good qubits if calibration info available, otherwise on dense links
    _given_layout = SetLayout(initial_layout)

    def _choose_layout_condition(property_set):
        return not property_set['layout']

    _choose_layout_1 = CSPLayout(coupling_map, call_limit=10000, time_limit=60)
    if layout_method == 'trivial':
        _choose_layout_2 = TrivialLayout(coupling_map)
    elif layout_method == 'dense':
        _choose_layout_2 = DenseLayout(coupling_map, backend_properties)
    elif layout_method == 'noise_adaptive':
        _choose_layout_2 = NoiseAdaptiveLayout(backend_properties)
    else:
        raise TranspilerError("Invalid layout method %s." % layout_method)

    # 3. Extend dag/layout with ancillas using the full coupling map
    _embed = [FullAncillaAllocation(coupling_map), EnlargeWithAncilla(), ApplyLayout()]

    # 4. Unroll to 1q or 2q gates, swap to fit the coupling map
    _swap_check = CheckMap(coupling_map)

    def _swap_condition(property_set):
        return not property_set['is_swap_mapped']

    _swap = [BarrierBeforeFinalMeasurements(), Unroll3qOrMore()]
    if routing_method == 'basic':
        _swap += [BasicSwap(coupling_map)]
    elif routing_method == 'stochastic':
        _swap += [StochasticSwap(coupling_map, trials=200, seed=seed_transpiler)]
    elif routing_method == 'lookahead':
        _swap += [LookaheadSwap(coupling_map, search_depth=5, search_width=6)]
    else:
        raise TranspilerError("Invalid routing method %s." % routing_method)

    # 5. 1q rotation merge and commutative cancellation iteratively until no more change in depth
    _depth_check = [Depth(), FixedPoint('depth')]

    def _opt_control(property_set):
        return not property_set['depth_fixed_point']

    _opt = [Unroll3qOrMore(),
            RemoveResetInZeroState(), InverseCancellation([HGate(), XGate()]),
            CommutativeCancellation(),
            Optimize1qGates(basis_gates), Optimize1qGatesDecomposition(),
            InverseCancellation([HGate(), XGate()]), CXCancellation(), RemoveDiagonalGatesBeforeMeasure()]

    # 6. Fix any CX direction mismatch
    _direction_check = [CheckCXDirection(coupling_map)]

    def _direction_condition(property_set):
        return not property_set['is_direction_mapped']

    _direction = [CXDirection(coupling_map)]

    # Build pass manager
    pm3 = PassManager()
    pm3.append(_unroll)
    if coupling_map:
        pm3.append(_given_layout)
        pm3.append(_choose_layout_1, condition=_choose_layout_condition)
        pm3.append(_choose_layout_2, condition=_choose_layout_condition)
        pm3.append(_embed)
        pm3.append(_swap_check)
        pm3.append(_swap, condition=_swap_condition)
    pm3.append(_unroll)
    pm3.append(_depth_check + _opt, do_while=_opt_control)
    if coupling_map and not coupling_map.is_symmetric:
        pm3.append(_direction_check)
        pm3.append(_direction, condition=_direction_condition)

    return pm3




class MyOptimizer:
    def __init__(self, qasm_file, quantum_backend):
        self.qasm_file = qasm_file
        self.quantum_backend = quantum_backend
        self.pm = level_2_pass_manager(self.pm_config(quantum_backend))
        #print(qasm_file)
        self.circuit = get_circuit_from_qasm_file(qasm_file)
        self.optimizer_name = 'MyOptimizer1'


    def pm_config(self, backend):
        return PassManagerConfig(
            basis_gates=backend.configuration().basis_gates,
            coupling_map=CouplingMap(backend.configuration().coupling_map),
            backend_properties=backend.properties())

    def optimize_with_save(self, output_file):
        transpiled = self.pm.run(self.circuit)
        transpiled.qasm(filename=output_file)


def get_optimizer(qasm_file, quantum_backend):
    return MyOptimizer(qasm_file, quantum_backend)

OPENQASM 2.0;
include "qelib1.inc";
qreg qubits[9];
creg c[9];

h qubits[8];
h qubits[8];
ccx qubits[4],qubits[7],qubits[8];
h qubits[8];
h qubits[7];
h qubits[7];
ccx qubits[3],qubits[6],qubits[7];
h qubits[7];
h qubits[6];
h qubits[6];
ccx qubits[2],qubits[5],qubits[6];
h qubits[6];
h qubits[5];
h qubits[5];
ccx qubits[0],qubits[1],qubits[5];
h qubits[5];
h qubits[5];
h qubits[6];
ccx qubits[2],qubits[5],qubits[6];
h qubits[6];
h qubits[6];
h qubits[7];
ccx qubits[3],qubits[6],qubits[7];
h qubits[7];
h qubits[7];
h qubits[8];
ccx qubits[4],qubits[7],qubits[8];
h qubits[8];
h qubits[8];
h qubits[7];
h qubits[7];
ccx qubits[3],qubits[6],qubits[7];
h qubits[7];
h qubits[6];
h qubits[6];
ccx qubits[2],qubits[5],qubits[6];
h qubits[6];
h qubits[5];
h qubits[5];
ccx qubits[0],qubits[1],qubits[5];
h qubits[5];
h qubits[5];
h qubits[6];
ccx qubits[2],qubits[5],qubits[6];
h qubits[6];
h qubits[6];
h qubits[7];
ccx qubits[3],qubits[6],qubits[7];
h qubits[7];
h qubits[7];
measure qubits[0] -> c[0];
measure qubits[1] -> c[1];
measure qubits[2] -> c[2];
measure qubits[3] -> c[3];
measure qubits[4] -> c[4];
measure qubits[5] -> c[5];
measure qubits[6] -> c[6];
measure qubits[7] -> c[7];
measure qubits[8] -> c[8];
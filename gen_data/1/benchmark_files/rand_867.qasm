OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
s q[1];
cz q[6],q[9];
z q[4];
ccx q[0],q[7],q[8];
h q[2];
cu3(1.0954234,5.6330935,2.2145382) q[5],q[3];
swap q[1],q[4];
ccx q[6],q[8],q[5];
cz q[0],q[9];
cswap q[3],q[7],q[2];
ch q[4],q[6];
cu1(4.938981) q[7],q[2];
ccx q[0],q[3],q[5];
cu1(0.017146882) q[1],q[8];
u3(0.98379168,5.0354368,0.73816054) q[9];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];
measure q[8] -> c[8];
measure q[9] -> c[9];
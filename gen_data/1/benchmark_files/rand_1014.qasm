OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[5],q[0],q[9];
cy q[4],q[8];
cswap q[2],q[7],q[6];
cz q[1],q[3];
cswap q[3],q[1],q[6];
cz q[7],q[5];
cswap q[0],q[9],q[2];
cu3(0.039658312,4.1540666,4.3574341) q[8],q[4];
rx(5.1878264) q[1];
ccx q[6],q[0],q[7];
cz q[3],q[8];
swap q[2],q[5];
cz q[4],q[9];
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
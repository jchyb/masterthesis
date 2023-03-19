OPENQASM 2.0;
include "qelib1.inc";
qreg q[12];
creg c[12];
id q[11];
cswap q[0],q[7],q[4];
rzz(2.6304826) q[1],q[3];
t q[10];
cswap q[5],q[8],q[9];
cu3(5.7521723,6.0419559,0.53543258) q[6],q[2];
h q[1];
ccx q[5],q[2],q[11];
cy q[10],q[3];
id q[7];
tdg q[0];
cx q[4],q[8];
ch q[6],q[9];
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
measure q[10] -> c[10];
measure q[11] -> c[11];
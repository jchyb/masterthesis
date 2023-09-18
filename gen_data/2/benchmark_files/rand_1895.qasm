OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ch q[5],q[7];
ccx q[1],q[2],q[4];
cswap q[6],q[9],q[8];
id q[0];
tdg q[3];
rz(4.2667701) q[3];
cu1(0.87715485) q[6],q[9];
cswap q[2],q[1],q[4];
cx q[5],q[0];
h q[7];
ry(0.30420959) q[8];
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
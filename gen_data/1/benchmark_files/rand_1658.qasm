OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cy q[7],q[6];
z q[0];
cswap q[2],q[4],q[8];
h q[5];
rzz(3.2905168) q[9],q[3];
u2(0.94796972,2.9242593) q[1];
tdg q[6];
cswap q[8],q[5],q[0];
ccx q[2],q[4],q[7];
cswap q[9],q[1],q[3];
rz(5.4018162) q[0];
ccx q[8],q[4],q[7];
ry(1.5581286) q[5];
cswap q[6],q[1],q[9];
ch q[2],q[3];
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
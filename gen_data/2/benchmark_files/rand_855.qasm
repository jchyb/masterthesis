OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
u3(3.103413,0.085946233,3.4743509) q[2];
cswap q[7],q[8],q[6];
tdg q[1];
rx(4.9160343) q[0];
ccx q[3],q[4],q[9];
h q[5];
z q[6];
ccx q[5],q[9],q[1];
ry(1.4629782) q[2];
ccx q[7],q[4],q[3];
cz q[8],q[0];
cswap q[6],q[7],q[9];
ccx q[1],q[4],q[8];
cswap q[2],q[3],q[5];
h q[0];
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
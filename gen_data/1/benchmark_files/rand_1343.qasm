OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[0],q[8],q[5];
cswap q[1],q[6],q[9];
swap q[7],q[2];
z q[4];
rx(2.0319533) q[3];
id q[0];
tdg q[8];
cu3(4.0865132,4.1514952,2.3253949) q[5],q[1];
u1(5.6645263) q[3];
cswap q[6],q[9],q[7];
crz(5.344381) q[2],q[4];
swap q[0],q[3];
ccx q[1],q[4],q[2];
cz q[6],q[5];
cswap q[9],q[7],q[8];
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
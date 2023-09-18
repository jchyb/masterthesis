OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
u3(3.8617846,3.0122423,4.0384222) q[1];
cx q[6],q[2];
cu1(0.11350424) q[5],q[9];
cu1(3.7830231) q[7],q[0];
swap q[4],q[3];
sdg q[8];
z q[9];
cswap q[0],q[6],q[8];
ccx q[5],q[4],q[7];
cswap q[2],q[1],q[3];
rzz(3.4618858) q[9],q[2];
cy q[7],q[8];
cswap q[0],q[6],q[3];
cswap q[5],q[1],q[4];
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
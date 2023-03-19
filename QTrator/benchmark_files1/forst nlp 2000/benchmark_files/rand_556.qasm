OPENQASM 2.0;
include "qelib1.inc";
qreg q[9];
creg c[9];
ccx q[1],q[6],q[4];
ch q[5],q[2];
rx(4.0168622) q[8];
crz(0.39435541) q[7],q[3];
t q[0];
ccx q[5],q[0],q[2];
ccx q[8],q[1],q[6];
tdg q[4];
ch q[3],q[7];
z q[4];
rz(2.2344936) q[1];
rzz(5.5034451) q[2],q[5];
u3(2.4739628,1.0339532,1.2110192) q[0];
ccx q[8],q[6],q[7];
x q[3];
u1(4.1015124) q[7];
ry(0.03947494) q[8];
cswap q[3],q[4],q[0];
ch q[2],q[1];
id q[5];
u3(3.7098988,2.2243165,4.0272531) q[6];
t q[2];
u2(3.2750504,2.4948318) q[7];
cx q[3],q[1];
cswap q[5],q[8],q[4];
s q[0];
y q[6];
swap q[4],q[0];
ccx q[8],q[7],q[5];
cswap q[2],q[3],q[6];
u1(2.1749447) q[1];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];
measure q[8] -> c[8];

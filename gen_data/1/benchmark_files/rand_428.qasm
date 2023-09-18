OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ch q[0],q[7];
z q[3];
cswap q[4],q[5],q[2];
swap q[9],q[8];
ry(0.65304794) q[1];
u2(3.0695652,2.4426813) q[6];
s q[7];
cx q[5],q[3];
ccx q[2],q[6],q[1];
ch q[4],q[9];
h q[0];
y q[8];
ccx q[0],q[7],q[4];
y q[1];
rzz(6.2153994) q[2],q[3];
swap q[6],q[5];
swap q[9],q[8];
cswap q[3],q[9],q[5];
ccx q[2],q[4],q[0];
t q[1];
cswap q[7],q[8],q[6];
cx q[1],q[4];
cswap q[9],q[6],q[7];
ry(1.9808255) q[2];
ch q[8],q[5];
u1(3.7239477) q[0];
id q[3];
x q[8];
cswap q[0],q[4],q[7];
id q[3];
swap q[5],q[1];
rzz(4.8117785) q[6],q[2];
u3(1.4964818,3.0020142,1.9583967) q[9];
cu3(6.0652578,2.7138965,2.0821089) q[3],q[0];
tdg q[4];
cz q[6],q[2];
cu1(2.0918945) q[8],q[7];
x q[5];
cu1(3.5918691) q[1],q[9];
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
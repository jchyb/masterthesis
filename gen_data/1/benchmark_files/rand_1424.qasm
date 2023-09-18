OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
u1(4.2234468) q[9];
crz(5.002707) q[2],q[5];
rzz(3.4889512) q[4],q[6];
s q[3];
ccx q[7],q[1],q[8];
tdg q[0];
swap q[1],q[9];
y q[8];
y q[2];
ccx q[4],q[6],q[5];
rz(0.89713455) q[7];
cy q[3],q[0];
swap q[2],q[3];
z q[9];
u2(4.1985609,3.3636724) q[8];
cswap q[0],q[7],q[1];
ccx q[6],q[4],q[5];
ch q[4],q[0];
crz(6.0098682) q[5],q[2];
ch q[6],q[7];
cx q[9],q[8];
cu3(2.4037845,3.1590568,3.7521846) q[1],q[3];
id q[5];
h q[9];
ccx q[6],q[3],q[7];
crz(1.0258911) q[8],q[4];
u2(0.28015231,2.4125699) q[2];
cy q[0],q[1];
cswap q[9],q[2],q[1];
ry(2.2736914) q[8];
z q[5];
cy q[6],q[7];
cswap q[0],q[4],q[3];
ccx q[9],q[8],q[6];
id q[2];
rx(4.7242223) q[4];
cy q[0],q[1];
rx(1.8229944) q[7];
cy q[3],q[5];
cz q[3],q[4];
id q[7];
ccx q[9],q[6],q[1];
cswap q[8],q[2],q[0];
h q[5];
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
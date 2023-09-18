OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
y q[4];
cx q[9],q[1];
cz q[8],q[5];
cswap q[7],q[2],q[6];
swap q[0],q[3];
crz(1.3473312) q[2],q[3];
cswap q[9],q[8],q[1];
cswap q[4],q[6],q[7];
t q[0];
u1(2.6894111) q[5];
tdg q[3];
cswap q[2],q[8],q[0];
u2(4.0693704,3.6170511) q[7];
ccx q[4],q[9],q[5];
z q[1];
u2(5.3090147,3.0085409) q[6];
t q[8];
cz q[6],q[5];
rz(1.1163367) q[7];
cz q[3],q[4];
sdg q[1];
ccx q[2],q[9],q[0];
y q[5];
x q[6];
cu3(4.9850585,3.8817029,5.109955) q[4],q[8];
cu3(4.4239518,1.3621402,3.9239192) q[9],q[2];
x q[0];
cu1(5.8085922) q[1],q[7];
y q[3];
x q[5];
ccx q[0],q[1],q[4];
cy q[8],q[9];
cu3(2.8774298,3.7381236,5.0355892) q[3],q[7];
cy q[2],q[6];
tdg q[3];
cy q[7],q[4];
ry(3.5796031) q[5];
cu1(5.3380447) q[1],q[8];
rx(1.8484926) q[6];
cu3(0.65039326,2.6509425,3.7229748) q[2],q[0];
rx(1.4763091) q[9];
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
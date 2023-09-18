OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[9],q[2],q[7];
ccx q[5],q[0],q[3];
s q[6];
ry(2.9398614) q[1];
rx(0.40751436) q[8];
id q[4];
cy q[9],q[0];
cx q[1],q[8];
cx q[6],q[4];
t q[5];
u1(4.9566073) q[2];
cu1(1.0081186) q[3],q[7];
ccx q[6],q[1],q[4];
t q[8];
sdg q[3];
rz(3.4213786) q[9];
ccx q[2],q[7],q[5];
rz(3.8699639) q[0];
cx q[0],q[5];
ch q[7],q[6];
rz(4.7791811) q[3];
cz q[8],q[2];
ccx q[1],q[9],q[4];
u1(2.0426128) q[9];
ccx q[1],q[4],q[2];
cswap q[0],q[8],q[7];
cu1(2.3965539) q[3],q[5];
x q[6];
id q[3];
id q[6];
cu1(0.863811) q[1],q[0];
cswap q[4],q[2],q[8];
ccx q[7],q[5],q[9];
ccx q[6],q[7],q[2];
cu1(5.7155022) q[1],q[0];
cx q[4],q[5];
ch q[8],q[9];
ry(3.1206038) q[3];
crz(1.1615505) q[4],q[3];
u1(4.4827417) q[8];
cy q[7],q[5];
swap q[0],q[2];
id q[6];
cx q[1],q[9];
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
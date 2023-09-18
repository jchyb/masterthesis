OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rz(3.0066036) q[9];
cswap q[5],q[4],q[3];
rzz(0.73588508) q[0],q[7];
t q[8];
y q[1];
cu1(3.7477432) q[6],q[2];
cswap q[6],q[0],q[3];
u2(2.2153644,4.6156633) q[4];
ccx q[5],q[2],q[1];
rz(6.0457229) q[9];
t q[8];
u1(0.30206734) q[7];
id q[5];
cswap q[4],q[1],q[7];
cswap q[8],q[6],q[3];
ccx q[9],q[0],q[2];
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
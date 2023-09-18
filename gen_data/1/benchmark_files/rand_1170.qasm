OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[1],q[2],q[6];
z q[5];
ccx q[4],q[9],q[3];
ccx q[7],q[8],q[0];
u1(3.1280776) q[5];
x q[3];
cswap q[0],q[6],q[4];
rzz(5.0007791) q[1],q[2];
cswap q[9],q[7],q[8];
ch q[4],q[6];
t q[5];
cx q[3],q[0];
rx(2.7925647) q[9];
ccx q[1],q[8],q[2];
y q[7];
cswap q[6],q[4],q[8];
z q[3];
cx q[0],q[2];
rz(3.9205219) q[5];
rzz(0.98102003) q[1],q[9];
x q[7];
cx q[9],q[1];
cy q[8],q[7];
rz(2.2305985) q[3];
ccx q[5],q[0],q[2];
tdg q[4];
y q[6];
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
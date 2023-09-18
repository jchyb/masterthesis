OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ry(6.1351522) q[9];
t q[5];
ch q[1],q[4];
ccx q[0],q[8],q[2];
ccx q[3],q[6],q[7];
cx q[8],q[1];
t q[3];
cx q[7],q[2];
id q[9];
cu3(6.2113338,0.46473443,4.3586706) q[4],q[0];
cx q[6],q[5];
ccx q[2],q[9],q[4];
cy q[7],q[5];
x q[1];
cswap q[0],q[8],q[3];
u2(0.7358558,3.8808661) q[6];
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
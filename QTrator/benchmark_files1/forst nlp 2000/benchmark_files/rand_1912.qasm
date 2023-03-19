OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[1],q[3],q[7];
cy q[8],q[6];
tdg q[5];
ch q[4],q[0];
rz(2.0759084) q[9];
x q[2];
ccx q[4],q[9],q[0];
ccx q[8],q[2],q[1];
id q[7];
cu1(0.98298027) q[6],q[5];
u3(4.7703249,0.011562236,2.5630925) q[3];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[9];
creg c[9];
rx(3.4289121) q[4];
ccx q[5],q[2],q[0];
x q[1];
ccx q[7],q[6],q[3];
t q[8];
h q[5];
z q[6];
crz(0.13489339) q[8],q[1];
cx q[0],q[4];
cy q[3],q[2];
u2(0.94845057,5.6206955) q[7];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];
measure q[8] -> c[8];
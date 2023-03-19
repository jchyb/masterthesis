OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg c[4];
ry(1.4394207) q[1];
y q[2];
s q[3];
s q[0];
u1(1.9466249) q[3];
cy q[1],q[2];
s q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
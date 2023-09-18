OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[6],q[2],q[7];
swap q[1],q[8];
rzz(0.40085783) q[3],q[5];
ccx q[4],q[9],q[0];
u1(1.831482) q[2];
t q[5];
cu1(1.6754963) q[1],q[4];
z q[7];
rz(1.0506459) q[9];
ry(3.9657113) q[3];
cy q[8],q[6];
s q[0];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg c[4];
cz q[3],q[0];
ch q[2],q[1];
ccx q[0],q[3],q[2];
u1(0.60475177) q[1];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
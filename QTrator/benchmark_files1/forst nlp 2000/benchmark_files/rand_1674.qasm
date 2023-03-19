OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
creg c[1];
u1(3.5908845) q[0];
id q[0];
measure q[0] -> c[0];

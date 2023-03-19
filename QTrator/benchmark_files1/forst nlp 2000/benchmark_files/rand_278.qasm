OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
creg c[1];
y q[0];
id q[0];
u1(1.8641887) q[0];
x q[0];
measure q[0] -> c[0];

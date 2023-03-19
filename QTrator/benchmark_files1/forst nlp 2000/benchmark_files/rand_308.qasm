OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg c[2];
u1(3.671844) q[1];
u2(4.0015016,0.15035346) q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];

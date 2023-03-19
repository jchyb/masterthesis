OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
creg c[1];
u1(3.7552205) q[0];
rz(4.5013651) q[0];
measure q[0] -> c[0];

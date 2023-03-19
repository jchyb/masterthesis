OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
creg c[1];
u2(4.2610361,1.6512881) q[0];
measure q[0] -> c[0];

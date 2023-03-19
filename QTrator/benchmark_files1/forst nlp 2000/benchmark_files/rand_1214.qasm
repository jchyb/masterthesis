OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
creg c[1];
y q[0];
x q[0];
z q[0];
s q[0];
measure q[0] -> c[0];

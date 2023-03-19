OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
creg c[1];
ry(0.74661075) q[0];
rx(5.8267772) q[0];
z q[0];
h q[0];
measure q[0] -> c[0];

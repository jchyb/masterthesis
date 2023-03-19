OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
creg c[1];
y q[0];
x q[0];
u2(3.2103792,1.9260652) q[0];
u1(3.2959476) q[0];
measure q[0] -> c[0];

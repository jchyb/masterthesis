OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
creg c[6];
x q[3];
x q[4];
h q[0];
x q[2];
cx q[1],q[5];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];

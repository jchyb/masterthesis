OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg c0[2];
h q[1];
cp(pi/2) q[1],q[0];
h q[0];
swap q[0],q[1];
barrier q[0],q[1];
measure q[0] -> c0[0];
measure q[1] -> c0[1];


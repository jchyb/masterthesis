OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
creg c[6];
ccx q[0],q[3],q[5];
ch q[1],q[2];
id q[4];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];

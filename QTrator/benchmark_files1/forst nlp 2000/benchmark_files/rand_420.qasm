OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
creg c[1];
sdg q[0];
ry(6.1964353) q[0];
id q[0];
s q[0];
measure q[0] -> c[0];

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg c[3];
u2(0.33574581,4.8358642) q[1];
rx(5.7815078) q[0];
h q[2];
ccx q[2],q[0],q[1];
cx q[0],q[2];
h q[1];
ccx q[2],q[1],q[0];
ccx q[0],q[2],q[1];
ch q[1],q[2];
x q[0];
cu3(5.1941997,0.83811894,5.5778132) q[2],q[1];
t q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];

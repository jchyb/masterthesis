OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg c[4];
crz(4.0283221) q[2],q[3];
x q[1];
rz(0.53780116) q[0];
cz q[2],q[3];
ch q[1],q[0];
ccx q[3],q[1],q[0];
rz(1.7044609) q[2];
h q[2];
cx q[0],q[3];
tdg q[1];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];

OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg c[3];
ccx q[2],q[1],q[0];
x q[2];
cx q[1],q[0];
cz q[0],q[2];
y q[1];
swap q[2],q[1];
tdg q[0];
ry(1.6298058) q[0];
crz(1.3932979) q[2],q[1];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
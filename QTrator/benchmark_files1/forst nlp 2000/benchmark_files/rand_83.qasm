OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg c[3];
cy q[1],q[2];
u1(1.4198418) q[0];
cswap q[1],q[0],q[2];
swap q[1],q[0];
tdg q[2];
ccx q[0],q[1],q[2];
ry(3.692153) q[0];
cx q[2],q[1];
rx(3.7051317) q[1];
y q[2];
x q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];

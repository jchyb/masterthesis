OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg c[3];
cu1(5.9781498) q[2],q[1];
y q[0];
cswap q[0],q[1],q[2];
ch q[0],q[2];
tdg q[1];
cswap q[1],q[2],q[0];
rx(3.3202716) q[2];
cy q[0],q[1];
t q[2];
swap q[0],q[1];
u1(3.4574039) q[1];
y q[2];
rx(1.9498256) q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg c[4];
cswap q[0],q[1],q[3];
tdg q[2];
ccx q[0],q[3],q[1];
u3(2.862003,0.78229436,0.46512243) q[2];
ry(1.3807881) q[1];
cy q[2],q[0];
u1(0.4082768) q[3];
id q[3];
cx q[2],q[0];
x q[1];
s q[2];
cx q[0],q[3];
u1(1.0982389) q[1];
crz(4.934125) q[2],q[3];
ry(0.66869516) q[0];
rx(5.2778201) q[1];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];

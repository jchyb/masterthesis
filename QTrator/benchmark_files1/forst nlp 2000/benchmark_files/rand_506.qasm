OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg c[2];
crz(0.26473836) q[0],q[1];
rx(2.4026087) q[0];
y q[1];
ry(4.194228) q[1];
ry(3.1607519) q[0];
cz q[1],q[0];
u1(5.9071096) q[0];
tdg q[1];
cz q[1],q[0];
cu3(6.0727333,1.3135932,4.9216163) q[1],q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];
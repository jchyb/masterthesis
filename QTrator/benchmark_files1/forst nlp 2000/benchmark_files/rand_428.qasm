OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg c[4];
y q[0];
u2(3.7014352,4.648795) q[3];
sdg q[2];
z q[1];
rzz(3.6031935) q[1],q[0];
cx q[3],q[2];
z q[3];
x q[1];
cx q[0],q[2];
cz q[3],q[0];
rx(2.3858119) q[1];
u2(3.0099385,1.0284308) q[2];
ccx q[0],q[3],q[1];
u1(3.2047859) q[2];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
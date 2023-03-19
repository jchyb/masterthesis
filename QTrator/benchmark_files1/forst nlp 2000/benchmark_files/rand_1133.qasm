OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg c[3];
x q[0];
cx q[1],q[2];
id q[1];
cu1(1.9315401) q[2],q[0];
cu1(4.0617541) q[0],q[2];
h q[1];
ccx q[1],q[2],q[0];
cu1(1.4776288) q[2],q[1];
t q[0];
cswap q[1],q[2],q[0];
ccx q[1],q[2],q[0];
y q[2];
crz(0.27709855) q[0],q[1];
crz(3.1821823) q[2],q[1];
u2(1.5983554,5.3108326) q[0];
id q[0];
s q[2];
z q[1];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
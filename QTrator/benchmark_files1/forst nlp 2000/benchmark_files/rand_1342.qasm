OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
creg c[1];
h q[0];
id q[0];
id q[0];
s q[0];
x q[0];
rx(3.4493385) q[0];
s q[0];
u1(2.938764) q[0];
rz(4.2762947) q[0];
sdg q[0];
rz(1.8257859) q[0];
t q[0];
x q[0];
s q[0];
measure q[0] -> c[0];
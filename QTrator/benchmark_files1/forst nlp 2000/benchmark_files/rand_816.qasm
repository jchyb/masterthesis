OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg c[3];
cu1(1.2505013) q[1],q[2];
s q[0];
sdg q[0];
h q[1];
s q[2];
cswap q[1],q[2],q[0];
cz q[1],q[2];
ry(4.275541) q[0];
cz q[2],q[1];
z q[0];
crz(1.1306836) q[1],q[0];
sdg q[2];
cswap q[2],q[0],q[1];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];

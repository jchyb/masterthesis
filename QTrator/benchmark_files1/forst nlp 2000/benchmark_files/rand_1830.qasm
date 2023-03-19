OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg c[3];
h q[1];
cx q[2],q[0];
cswap q[2],q[1],q[0];
cy q[1],q[2];
sdg q[0];
rz(5.6009409) q[2];
rzz(3.8225061) q[0],q[1];
cx q[1],q[0];
id q[2];
u1(3.1114093) q[2];
ch q[0],q[1];
h q[0];
cx q[2],q[1];
cswap q[0],q[1],q[2];
z q[2];
cz q[0],q[1];
ch q[1],q[2];
rz(5.7673192) q[0];
ccx q[1],q[2],q[0];
ccx q[1],q[2],q[0];
cswap q[1],q[2],q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];

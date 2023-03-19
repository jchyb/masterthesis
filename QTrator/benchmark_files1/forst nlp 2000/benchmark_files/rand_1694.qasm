OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[5];
ccx q[4],q[0],q[1];
cy q[3],q[2];
z q[1];
sdg q[2];
ch q[4],q[3];
t q[0];
cswap q[3],q[1],q[2];
cx q[4],q[0];
rz(2.6439168) q[2];
t q[0];
rzz(4.0844925) q[1],q[4];
ry(0.9936369) q[3];
z q[4];
id q[0];
tdg q[2];
cx q[1],q[3];
cx q[4],q[1];
cswap q[3],q[2],q[0];
cy q[3],q[0];
ry(1.4486828) q[1];
u2(5.4109036,4.9186823) q[2];
u2(0.16401281,1.4877372) q[4];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];

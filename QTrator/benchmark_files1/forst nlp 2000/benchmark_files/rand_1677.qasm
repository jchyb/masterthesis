OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg c[4];
rz(4.5590359) q[3];
crz(0.50666161) q[0],q[2];
x q[1];
cy q[0],q[3];
tdg q[2];
sdg q[1];
cswap q[1],q[0],q[2];
z q[3];
cu3(3.162895,4.0702576,2.2266734) q[2],q[3];
rz(3.9554697) q[0];
t q[1];
rzz(3.6037606) q[0],q[3];
swap q[2],q[1];
cy q[2],q[3];
s q[0];
u2(5.3296244,2.4988809) q[1];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];

OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[5];
ccx q[2],q[3],q[1];
rzz(2.7935446) q[4],q[0];
u1(3.1846673) q[4];
cswap q[2],q[1],q[3];
u1(2.0216634) q[0];
sdg q[1];
cswap q[4],q[3],q[0];
s q[2];
tdg q[4];
u3(1.9137216,1.5560285,0.7011919) q[2];
x q[0];
y q[3];
tdg q[1];
cswap q[2],q[4],q[0];
ch q[3],q[1];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
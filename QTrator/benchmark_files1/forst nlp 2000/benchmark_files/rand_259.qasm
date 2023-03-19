OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
creg c[7];
s q[6];
ccx q[5],q[1],q[0];
swap q[4],q[2];
tdg q[3];
tdg q[2];
cswap q[0],q[4],q[3];
cswap q[5],q[1],q[6];
h q[6];
u1(2.7039746) q[1];
h q[4];
cu3(3.5826795,0.57225606,2.591726) q[5],q[2];
z q[3];
rx(2.1150654) q[0];
swap q[6],q[1];
cswap q[5],q[2],q[0];
h q[4];
x q[3];
swap q[1],q[4];
cswap q[2],q[6],q[3];
x q[5];
y q[0];
ccx q[3],q[0],q[6];
cy q[2],q[1];
y q[5];
u2(1.6735528,5.8838023) q[4];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
s q[9];
ccx q[5],q[3],q[1];
y q[4];
cx q[7],q[0];
cswap q[2],q[8],q[6];
crz(2.3883619) q[4],q[7];
swap q[0],q[9];
cy q[5],q[3];
ch q[6],q[8];
swap q[2],q[1];
cy q[7],q[5];
cswap q[6],q[9],q[8];
ccx q[1],q[3],q[0];
crz(5.6163445) q[2],q[4];
cswap q[1],q[2],q[0];
rzz(4.7760662) q[4],q[9];
cswap q[3],q[8],q[5];
sdg q[6];
y q[7];
cx q[2],q[8];
tdg q[3];
rz(4.13573) q[6];
ccx q[0],q[4],q[9];
u1(5.8641191) q[1];
crz(1.0454023) q[5],q[7];
rz(1.8674684) q[3];
cswap q[1],q[4],q[2];
cy q[5],q[8];
cy q[0],q[7];
cu1(2.7541903) q[6],q[9];
cu1(3.0450595) q[6],q[7];
ccx q[2],q[5],q[1];
u3(0.96976049,4.2778187,2.3648506) q[9];
y q[3];
swap q[8],q[4];
t q[0];
rx(4.3986564) q[7];
cy q[3],q[0];
swap q[1],q[6];
s q[8];
x q[2];
ch q[4],q[5];
x q[9];
sdg q[1];
cx q[4],q[5];
u1(1.3903946) q[2];
rx(4.4887676) q[3];
cy q[7],q[8];
ccx q[0],q[9],q[6];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];
measure q[8] -> c[8];
measure q[9] -> c[9];
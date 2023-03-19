OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
creg c[7];
u3(0.0078233917,3.5746168,3.3562368) q[2];
cswap q[4],q[3],q[0];
cswap q[1],q[6],q[5];
cswap q[2],q[5],q[4];
ch q[1],q[3];
crz(4.6955417) q[0],q[6];
ccx q[3],q[6],q[5];
rz(3.6165481) q[2];
u1(0.85348547) q[0];
tdg q[4];
u1(4.4738216) q[1];
ccx q[5],q[3],q[6];
ccx q[4],q[0],q[2];
ry(0.65594192) q[1];
u1(2.1576101) q[4];
cz q[2],q[3];
cswap q[6],q[1],q[0];
id q[5];
cz q[0],q[5];
ccx q[4],q[3],q[6];
rz(1.9554838) q[2];
y q[1];
cswap q[6],q[3],q[5];
cswap q[4],q[2],q[1];
t q[0];
ch q[4],q[5];
rx(2.0029908) q[3];
ch q[2],q[0];
cu3(2.4469964,3.7779797,6.1512482) q[1],q[6];
ccx q[4],q[2],q[5];
cu1(5.3166152) q[0],q[1];
cu1(4.1077706) q[3],q[6];
ry(3.5887953) q[1];
sdg q[5];
swap q[6],q[0];
s q[2];
cx q[4],q[3];
cswap q[6],q[0],q[3];
rzz(1.601818) q[5],q[4];
swap q[1],q[2];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
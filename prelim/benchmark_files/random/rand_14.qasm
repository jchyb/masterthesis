OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
u1(1.6857101) q[0];
rx(2.7330945) q[7];
t q[6];
cswap q[4],q[3],q[9];
x q[5];
ccx q[8],q[2],q[1];
rzz(0.49602628) q[4],q[2];
ccx q[1],q[6],q[9];
u1(3.6884149) q[5];
swap q[7],q[8];
cu1(4.8867742) q[3],q[0];
ccx q[4],q[7],q[2];
cy q[5],q[6];
rzz(5.2668611) q[8],q[9];
cswap q[3],q[0],q[1];
id q[7];
cswap q[2],q[0],q[5];
cswap q[9],q[4],q[3];
cswap q[8],q[1],q[6];
cswap q[1],q[4],q[7];
ch q[2],q[6];
cu1(2.3154095) q[5],q[8];
crz(5.5305137) q[0],q[3];
x q[9];
cu1(3.2166146) q[8],q[7];
u2(5.9304331,2.9884049) q[1];
cswap q[9],q[5],q[4];
cswap q[2],q[3],q[0];
rz(0.53684477) q[6];
rzz(4.2336072) q[0],q[2];
crz(5.4052764) q[4],q[8];
sdg q[9];
rx(0.96805058) q[3];
swap q[7],q[1];
cx q[5],q[6];
ch q[3],q[5];
ccx q[4],q[2],q[7];
u2(1.0961065,5.0466146) q[9];
ccx q[6],q[1],q[0];
rz(2.5304798) q[8];
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
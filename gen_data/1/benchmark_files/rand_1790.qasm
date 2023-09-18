OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ry(0.04652576) q[3];
s q[0];
ccx q[6],q[1],q[8];
ccx q[7],q[4],q[5];
ry(0.3654767) q[2];
s q[9];
rx(0.016665656) q[8];
cswap q[3],q[2],q[0];
ccx q[5],q[4],q[9];
crz(6.0851052) q[7],q[1];
rz(2.1701663) q[6];
x q[0];
cswap q[1],q[6],q[8];
cu3(2.6425301,0.76312132,2.6483752) q[7],q[5];
cx q[2],q[3];
rzz(3.6243262) q[9],q[4];
ccx q[3],q[4],q[0];
ccx q[5],q[1],q[7];
rzz(5.5690318) q[9],q[8];
id q[6];
x q[2];
rz(1.3378025) q[3];
u2(4.8599457,5.4701155) q[6];
cswap q[2],q[7],q[9];
ch q[4],q[0];
crz(0.22227023) q[8],q[5];
sdg q[1];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
y q[7];
ry(1.0398992) q[6];
ch q[0],q[5];
ccx q[4],q[3],q[1];
rzz(5.2699037) q[9],q[2];
ry(2.8760268) q[8];
u2(6.0217893,6.2663662) q[6];
cz q[5],q[0];
tdg q[4];
y q[7];
rx(4.1568037) q[9];
cswap q[1],q[2],q[3];
tdg q[8];
ry(6.2740782) q[8];
cswap q[1],q[7],q[4];
ccx q[6],q[9],q[2];
crz(3.2284357) q[3],q[0];
tdg q[5];
rz(5.4970657) q[1];
rzz(3.0414049) q[0],q[7];
cy q[3],q[6];
tdg q[4];
s q[5];
tdg q[8];
cz q[9],q[2];
cswap q[5],q[7],q[1];
ccx q[3],q[2],q[4];
ccx q[0],q[6],q[8];
y q[9];
cu1(3.0195529) q[1],q[6];
swap q[4],q[8];
cu3(2.2232358,2.839897,2.6009744) q[0],q[2];
ccx q[9],q[5],q[7];
y q[3];
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
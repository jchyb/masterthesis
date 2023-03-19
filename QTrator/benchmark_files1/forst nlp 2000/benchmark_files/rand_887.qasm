OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[7],q[5],q[9];
crz(0.44969485) q[4],q[0];
cx q[8],q[3];
u1(3.4883039) q[1];
s q[2];
s q[6];
tdg q[9];
ccx q[8],q[5],q[0];
u2(0.31568675,2.1091206) q[3];
x q[1];
rzz(0.4540465) q[2],q[7];
rzz(3.7903036) q[6],q[4];
cswap q[0],q[5],q[9];
ccx q[2],q[3],q[6];
ccx q[1],q[7],q[4];
id q[8];
ccx q[9],q[1],q[4];
id q[3];
sdg q[0];
cswap q[5],q[6],q[2];
ry(6.257854) q[8];
z q[7];
cswap q[3],q[4],q[2];
rzz(2.1559543) q[0],q[5];
u2(0.24563046,5.0482212) q[7];
cswap q[6],q[1],q[8];
id q[9];
cu1(5.0036486) q[9],q[7];
u2(5.4414576,0.45995964) q[4];
ccx q[6],q[5],q[3];
rzz(1.7057098) q[0],q[8];
swap q[1],q[2];
t q[9];
cswap q[4],q[7],q[8];
cu1(5.3965933) q[5],q[1];
s q[6];
cy q[2],q[3];
x q[0];
z q[8];
ccx q[4],q[5],q[3];
cu3(4.8706174,4.3018804,2.2326215) q[2],q[6];
ccx q[1],q[0],q[7];
sdg q[9];
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
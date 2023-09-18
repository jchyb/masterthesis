OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rz(0.14447697) q[4];
cswap q[3],q[0],q[6];
rz(5.7002988) q[2];
ch q[9],q[1];
id q[7];
rzz(4.3503964) q[5],q[8];
cswap q[4],q[2],q[9];
cy q[8],q[5];
cy q[0],q[7];
id q[1];
cu1(4.9005001) q[3],q[6];
id q[7];
y q[9];
crz(4.5036143) q[2],q[8];
ccx q[5],q[3],q[1];
cswap q[4],q[0],q[6];
cu3(1.367042,5.5630811,3.126954) q[6],q[5];
cswap q[4],q[9],q[0];
u3(3.1445982,0.91239206,4.8168671) q[3];
rzz(3.1188795) q[1],q[2];
u3(4.182231,4.3320516,0.77525049) q[7];
y q[8];
cswap q[7],q[4],q[1];
swap q[0],q[5];
u1(6.2225509) q[2];
ch q[3],q[9];
ch q[8],q[6];
ch q[1],q[0];
ccx q[2],q[8],q[3];
t q[6];
cx q[9],q[5];
tdg q[4];
y q[7];
swap q[3],q[2];
z q[0];
ccx q[9],q[4],q[8];
cu3(6.0641747,5.2573614,5.1410376) q[1],q[6];
swap q[7],q[5];
rzz(4.7513281) q[3],q[5];
y q[7];
ch q[4],q[9];
cswap q[0],q[2],q[1];
t q[8];
h q[6];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
crz(2.1760842) q[5],q[9];
cu1(0.82995528) q[3],q[7];
cu3(1.9869484,0.79423097,6.2001513) q[2],q[8];
cx q[6],q[1];
rx(4.6708066) q[4];
tdg q[0];
cu3(1.3284984,2.811854,3.0771431) q[8],q[7];
ccx q[3],q[1],q[6];
cu1(1.1115338) q[0],q[9];
cz q[4],q[2];
rz(2.5882278) q[5];
u2(2.6326574,4.2702292) q[4];
ccx q[1],q[6],q[7];
cz q[3],q[8];
crz(3.9755161) q[2],q[5];
cx q[0],q[9];
ccx q[4],q[2],q[6];
ccx q[9],q[5],q[1];
cx q[3],q[7];
z q[0];
y q[8];
cswap q[4],q[3],q[9];
cswap q[8],q[0],q[2];
id q[5];
rz(5.2890935) q[7];
cy q[6],q[1];
u3(0.93226637,3.8065762,2.6344213) q[2];
id q[8];
rzz(4.5915855) q[6],q[0];
cy q[3],q[7];
cu1(5.0908824) q[9],q[4];
cu3(2.3332945,4.81746,1.3159652) q[1],q[5];
u2(1.7084878,4.2640573) q[2];
swap q[8],q[0];
cu3(0.74600259,2.8406514,3.7296479) q[5],q[9];
ccx q[3],q[1],q[6];
rzz(0.7835408) q[4],q[7];
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
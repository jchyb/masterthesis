OPENQASM 2.0;
include "qelib1.inc";
qreg q[12];
creg c[12];
ccx q[8],q[1],q[4];
ccx q[11],q[6],q[10];
sdg q[2];
ccx q[5],q[3],q[7];
t q[0];
t q[9];
cswap q[7],q[1],q[10];
sdg q[0];
crz(0.37836251) q[2],q[9];
cu1(5.3472657) q[8],q[5];
ch q[4],q[3];
swap q[6],q[11];
cu1(4.8152708) q[1],q[4];
cswap q[3],q[10],q[9];
tdg q[8];
cswap q[0],q[5],q[11];
ccx q[7],q[6],q[2];
cu3(5.2854827,0.68377525,1.1720274) q[4],q[6];
u2(0.15388416,5.8450302) q[0];
rz(2.6084826) q[2];
cz q[10],q[9];
ry(3.956148) q[11];
ccx q[5],q[1],q[7];
tdg q[3];
u2(5.9209938,5.9240604) q[8];
rzz(0.78896791) q[2],q[3];
t q[5];
ry(0.26276295) q[11];
cz q[7],q[1];
tdg q[0];
id q[4];
cu3(4.4120555,2.2261642,2.9428434) q[6],q[10];
u1(5.6698694) q[9];
ry(5.7427378) q[8];
u2(2.6639992,1.6278693) q[2];
cswap q[10],q[6],q[7];
id q[4];
cy q[8],q[0];
ccx q[5],q[11],q[3];
tdg q[1];
ry(2.7433664) q[9];
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
measure q[10] -> c[10];
measure q[11] -> c[11];
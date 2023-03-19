OPENQASM 2.0;
include "qelib1.inc";
qreg q[13];
creg c[13];
cswap q[12],q[1],q[6];
cy q[11],q[7];
swap q[5],q[2];
rzz(0.89958801) q[10],q[3];
cu1(5.228269) q[8],q[0];
tdg q[4];
s q[9];
cswap q[1],q[2],q[10];
cswap q[7],q[6],q[11];
u2(2.6637948,3.1732824) q[3];
ccx q[4],q[8],q[5];
u3(1.3248283,1.5317398,5.348841) q[0];
id q[12];
s q[9];
ry(6.0902509) q[1];
rx(4.1795887) q[5];
ccx q[10],q[8],q[11];
s q[3];
cswap q[9],q[6],q[4];
cu3(0.33381594,0.75281166,0.67631502) q[12],q[7];
cz q[0],q[2];
ccx q[0],q[10],q[12];
rzz(2.7982874) q[1],q[8];
cswap q[3],q[9],q[4];
h q[5];
crz(1.4393724) q[11],q[2];
id q[7];
u2(2.1837865,5.4512283) q[6];
swap q[7],q[6];
u2(2.8677986,3.7331456) q[4];
x q[0];
rz(2.6931639) q[9];
ccx q[3],q[11],q[10];
t q[2];
x q[1];
cz q[8],q[5];
h q[12];
ccx q[2],q[5],q[10];
u3(1.167876,0.28449283,5.7481302) q[6];
cy q[4],q[1];
rx(5.6973889) q[9];
ccx q[12],q[0],q[3];
ccx q[11],q[7],q[8];
cz q[0],q[10];
crz(2.9721832) q[4],q[1];
u2(4.3098847,4.3753324) q[2];
cy q[12],q[5];
crz(0.18084745) q[6],q[7];
u2(6.1954313,5.7766274) q[3];
cswap q[8],q[9],q[11];
ccx q[4],q[1],q[8];
s q[7];
cswap q[10],q[11],q[0];
h q[9];
rzz(1.3393153) q[5],q[6];
x q[2];
rx(5.7012319) q[12];
z q[3];
s q[12];
cy q[10],q[6];
ccx q[8],q[5],q[9];
cswap q[11],q[7],q[2];
cx q[3],q[1];
rx(3.7237769) q[0];
id q[4];
u1(0.18234594) q[5];
u1(1.7937832) q[2];
cy q[0],q[7];
rx(3.3343964) q[4];
sdg q[3];
crz(4.8635914) q[11],q[9];
cz q[10],q[8];
z q[12];
sdg q[6];
x q[1];
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
measure q[12] -> c[12];

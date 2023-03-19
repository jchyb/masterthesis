OPENQASM 2.0;
include "qelib1.inc";
qreg q[13];
creg c[13];
crz(1.1234943) q[0],q[8];
h q[12];
rzz(2.9852645) q[9],q[2];
h q[5];
cx q[10],q[11];
ccx q[6],q[4],q[7];
u2(5.4306635,1.4176893) q[3];
id q[1];
cswap q[0],q[1],q[12];
ch q[2],q[7];
cy q[11],q[3];
cz q[4],q[10];
cy q[6],q[9];
t q[5];
y q[8];
swap q[10],q[4];
cswap q[11],q[9],q[3];
cswap q[0],q[8],q[6];
cu3(5.2556296,3.6287493,4.0308163) q[5],q[2];
cswap q[1],q[12],q[7];
cswap q[9],q[10],q[2];
u1(1.9247277) q[12];
ry(3.2975898) q[5];
u1(3.7583706) q[8];
u2(1.2471639,0.33740626) q[6];
cy q[3],q[7];
u1(3.937899) q[0];
cswap q[1],q[11],q[4];
ccx q[2],q[6],q[11];
cu3(5.2616117,0.37243659,0.23108685) q[12],q[8];
rx(2.8046578) q[9];
ccx q[7],q[1],q[10];
ccx q[0],q[3],q[4];
h q[5];
rx(6.0611981) q[4];
swap q[5],q[2];
ccx q[8],q[10],q[12];
rzz(1.4684632) q[0],q[7];
cz q[9],q[11];
u1(4.4176002) q[1];
rzz(3.3399353) q[6],q[3];
tdg q[7];
cswap q[5],q[8],q[1];
ccx q[0],q[6],q[10];
ccx q[3],q[4],q[9];
cy q[11],q[2];
id q[12];
cu3(2.7509663,4.3324608,2.9729589) q[0],q[6];
ccx q[3],q[12],q[8];
cswap q[11],q[5],q[4];
rzz(0.4494892) q[1],q[10];
cz q[2],q[7];
t q[9];
z q[2];
u3(0.3783038,5.2060911,4.3293236) q[3];
ccx q[4],q[7],q[12];
cswap q[10],q[8],q[0];
ccx q[9],q[6],q[1];
z q[11];
u3(3.1294422,5.257545,0.90384934) q[5];
ccx q[0],q[8],q[11];
ry(2.2911189) q[5];
swap q[3],q[1];
cy q[9],q[10];
cswap q[6],q[4],q[2];
rx(1.7204518) q[12];
tdg q[7];
t q[11];
z q[10];
y q[5];
cswap q[2],q[4],q[1];
s q[9];
x q[0];
cy q[6],q[8];
ccx q[12],q[3],q[7];
cswap q[3],q[6],q[10];
cy q[9],q[12];
u2(3.7087493,5.0164051) q[5];
cswap q[4],q[2],q[7];
cy q[0],q[11];
ch q[8],q[1];
sdg q[7];
swap q[9],q[10];
cz q[6],q[1];
rzz(1.3729767) q[2],q[0];
cswap q[12],q[5],q[11];
cz q[8],q[3];
u2(4.5519306,5.8896664) q[4];
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
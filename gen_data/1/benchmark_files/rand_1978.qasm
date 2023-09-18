OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
swap q[9],q[5];
ccx q[7],q[6],q[3];
cz q[2],q[1];
cswap q[8],q[4],q[0];
u3(5.0592181,3.7594842,0.91444881) q[3];
cswap q[1],q[5],q[2];
swap q[6],q[0];
cu3(0.83094121,1.3183039,2.128347) q[8],q[4];
u1(0.11147424) q[9];
ry(0.98638378) q[7];
cz q[4],q[8];
ccx q[5],q[1],q[9];
cu3(0.50788244,5.026226,4.0434482) q[2],q[0];
rx(4.5941824) q[7];
tdg q[3];
t q[6];
u2(1.4083766,4.7178425) q[7];
u2(4.0729525,4.336514) q[2];
ccx q[3],q[9],q[0];
ccx q[5],q[4],q[6];
u2(2.6821524,5.7709889) q[1];
sdg q[8];
cswap q[0],q[9],q[6];
z q[4];
x q[2];
tdg q[1];
cu1(1.2120628) q[5],q[3];
u1(2.5620809) q[8];
rx(6.2072823) q[7];
ccx q[6],q[4],q[1];
u1(2.7983795) q[0];
cswap q[9],q[3],q[5];
cu3(4.7213206,1.1945881,5.4289561) q[2],q[8];
rz(5.3235819) q[7];
ccx q[9],q[1],q[0];
cx q[4],q[3];
cy q[2],q[5];
rzz(3.5426941) q[7],q[8];
u2(0.93517997,4.9731571) q[6];
ch q[7],q[2];
ccx q[6],q[1],q[5];
cu3(2.3430898,2.1707424,1.703311) q[4],q[8];
ccx q[9],q[0],q[3];
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
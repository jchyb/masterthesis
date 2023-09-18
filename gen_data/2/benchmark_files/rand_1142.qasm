OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[7],q[9],q[1];
u2(6.0844328,0.78171105) q[4];
u3(0.050837931,4.80219,4.0975177) q[0];
ccx q[2],q[5],q[3];
id q[6];
z q[8];
cz q[5],q[6];
rx(6.2618283) q[8];
rz(0.51564015) q[1];
ccx q[7],q[3],q[0];
x q[9];
x q[4];
x q[2];
cz q[5],q[7];
tdg q[6];
ccx q[3],q[0],q[2];
ccx q[8],q[1],q[9];
tdg q[4];
cswap q[7],q[5],q[8];
cswap q[6],q[9],q[1];
rzz(4.8621713) q[2],q[3];
ch q[0],q[4];
cswap q[5],q[9],q[1];
x q[4];
x q[3];
t q[7];
cswap q[6],q[0],q[2];
u3(4.022945,0.013313929,1.6678289) q[8];
cswap q[8],q[2],q[3];
crz(0.625673) q[1],q[6];
ch q[0],q[9];
cy q[5],q[4];
u1(0.60184319) q[7];
rzz(0.9360391) q[9],q[2];
cswap q[1],q[5],q[7];
cswap q[8],q[4],q[0];
cu3(1.754602,1.58153,5.7149356) q[6],q[3];
ch q[4],q[3];
cu1(4.9220462) q[8],q[5];
cy q[0],q[9];
ccx q[6],q[1],q[2];
x q[7];
cswap q[8],q[5],q[1];
rzz(5.3489638) q[7],q[0];
cx q[3],q[2];
ch q[6],q[9];
id q[4];
ch q[1],q[4];
cz q[3],q[7];
u3(4.5756713,3.0527317,5.5926327) q[2];
cswap q[9],q[0],q[5];
crz(5.265666) q[8],q[6];
ccx q[6],q[1],q[0];
ccx q[8],q[2],q[3];
cswap q[7],q[4],q[9];
t q[5];
z q[1];
rzz(5.0504096) q[0],q[8];
ccx q[2],q[4],q[7];
ch q[3],q[9];
rzz(5.6285273) q[6],q[5];
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
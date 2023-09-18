OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cz q[0],q[8];
cu3(5.5096667,3.1895966,6.1925648) q[4],q[1];
y q[5];
cy q[6],q[2];
ccx q[3],q[9],q[7];
rx(4.2533355) q[2];
sdg q[0];
ccx q[5],q[1],q[8];
ccx q[7],q[6],q[9];
cu3(4.7732851,1.4986895,3.2902852) q[4],q[3];
rx(1.4221271) q[6];
cswap q[3],q[7],q[8];
tdg q[5];
ccx q[1],q[0],q[9];
z q[4];
s q[2];
ccx q[4],q[9],q[0];
cy q[1],q[3];
ch q[8],q[7];
cswap q[6],q[2],q[5];
z q[0];
cswap q[7],q[4],q[6];
cswap q[8],q[5],q[2];
ccx q[1],q[9],q[3];
swap q[6],q[8];
crz(1.7067192) q[9],q[3];
ccx q[7],q[1],q[0];
rzz(0.66168636) q[2],q[5];
s q[4];
cz q[0],q[3];
x q[7];
u1(4.9738457) q[1];
id q[9];
swap q[5],q[4];
cy q[6],q[8];
ry(4.1974109) q[2];
cswap q[6],q[8],q[5];
s q[2];
cswap q[9],q[3],q[7];
sdg q[1];
cu1(2.3175776) q[0],q[4];
ccx q[7],q[8],q[2];
ry(4.3724973) q[6];
t q[9];
x q[3];
ccx q[1],q[4],q[0];
x q[5];
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
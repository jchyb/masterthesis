OPENQASM 2.0;
include "qelib1.inc";
qreg q[12];
creg c[12];
swap q[9],q[7];
cswap q[8],q[2],q[4];
cswap q[5],q[0],q[3];
s q[1];
ch q[10],q[6];
tdg q[11];
ch q[1],q[0];
cy q[9],q[6];
cy q[8],q[7];
y q[4];
t q[3];
cz q[5],q[10];
x q[11];
u3(2.34454,4.0278786,3.6361028) q[2];
ch q[9],q[2];
cx q[5],q[1];
ccx q[7],q[11],q[8];
ccx q[3],q[10],q[0];
tdg q[6];
t q[4];
cswap q[7],q[3],q[0];
t q[6];
rz(5.0527195) q[4];
cy q[8],q[2];
u2(4.718976,5.2140033) q[10];
y q[1];
tdg q[9];
t q[11];
u2(2.4042554,4.2607008) q[5];
cswap q[4],q[7],q[0];
cz q[10],q[11];
x q[8];
ccx q[1],q[6],q[5];
rx(2.0079689) q[3];
rx(0.99839529) q[9];
x q[2];
ccx q[3],q[7],q[2];
ccx q[1],q[11],q[0];
z q[6];
ccx q[4],q[5],q[9];
x q[8];
u2(0.92627636,5.8701238) q[10];
cswap q[1],q[10],q[6];
ccx q[9],q[2],q[7];
ccx q[11],q[3],q[4];
swap q[0],q[5];
sdg q[8];
cu1(3.1455193) q[4],q[6];
ccx q[7],q[2],q[8];
swap q[10],q[5];
x q[9];
cu3(4.165701,4.9802603,1.2296976) q[11],q[3];
cy q[1],q[0];
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

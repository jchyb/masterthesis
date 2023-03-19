OPENQASM 2.0;
include "qelib1.inc";
qreg q[13];
creg c[13];
t q[5];
cu1(5.632956) q[4],q[8];
cswap q[7],q[1],q[10];
ch q[3],q[0];
ccx q[9],q[6],q[12];
swap q[11],q[2];
rz(5.5378012) q[2];
ch q[8],q[1];
x q[12];
ch q[3],q[6];
t q[11];
y q[4];
cswap q[7],q[0],q[10];
y q[9];
u1(4.2268096) q[5];
swap q[9],q[8];
swap q[7],q[0];
h q[6];
cu3(4.5272872,4.4565801,4.6675838) q[2],q[10];
cu3(4.3244208,0.64630675,2.4064695) q[5],q[12];
swap q[4],q[1];
u3(4.8382864,4.7904491,1.6940477) q[11];
sdg q[3];
h q[6];
h q[8];
u2(5.1140954,0.37324026) q[4];
crz(2.6463441) q[2],q[0];
cu3(4.4425021,6.0574981,5.2526088) q[3],q[5];
tdg q[12];
crz(0.23488336) q[10],q[11];
sdg q[1];
crz(0.55445624) q[7],q[9];
cx q[10],q[0];
rz(5.7381321) q[3];
u2(4.4028126,0.95672408) q[6];
ccx q[2],q[8],q[4];
cswap q[11],q[7],q[12];
h q[1];
rzz(3.9461898) q[5],q[9];
ch q[5],q[9];
ccx q[7],q[2],q[12];
sdg q[4];
cu3(0.60236287,5.8885046,0.42285839) q[3],q[1];
cswap q[8],q[0],q[10];
z q[6];
x q[11];
x q[0];
cswap q[10],q[7],q[9];
swap q[6],q[4];
cswap q[2],q[5],q[8];
cy q[11],q[1];
ch q[12],q[3];
cu3(5.698689,2.5738869,5.6940576) q[8],q[5];
cswap q[12],q[7],q[11];
ccx q[9],q[3],q[2];
id q[4];
cswap q[0],q[1],q[10];
rz(5.9267856) q[6];
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
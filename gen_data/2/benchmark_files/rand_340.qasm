OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
x q[4];
cswap q[5],q[0],q[7];
ry(6.2500338) q[6];
u2(0.46243185,4.514826) q[3];
ch q[9],q[8];
t q[2];
ry(1.8852613) q[1];
cx q[7],q[8];
ccx q[5],q[6],q[3];
cz q[4],q[0];
cu3(3.5550661,4.5349246,3.8541724) q[9],q[1];
t q[2];
cu3(5.2254332,0.46974637,4.5191741) q[0],q[8];
cu3(4.8025528,6.0875957,2.8930482) q[2],q[9];
cswap q[5],q[3],q[7];
cswap q[1],q[6],q[4];
u2(1.3305005,2.2451003) q[5];
ccx q[4],q[6],q[3];
u1(5.841752) q[9];
cswap q[8],q[7],q[2];
crz(1.0295288) q[1],q[0];
ccx q[8],q[4],q[0];
s q[5];
h q[9];
t q[2];
ch q[3],q[6];
rzz(3.169189) q[7],q[1];
t q[5];
cy q[2],q[1];
cu3(2.1381479,2.4933994,4.726999) q[4],q[6];
cy q[3],q[8];
cswap q[9],q[0],q[7];
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
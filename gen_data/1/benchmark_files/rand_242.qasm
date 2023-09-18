OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[5],q[7],q[2];
s q[8];
rzz(1.5221958) q[4],q[1];
swap q[6],q[0];
cu3(3.7146024,4.0531287,2.1287691) q[3],q[9];
h q[2];
cswap q[3],q[8],q[9];
u1(3.6907653) q[0];
cy q[1],q[7];
ccx q[4],q[6],q[5];
ccx q[6],q[4],q[1];
cswap q[3],q[0],q[7];
cswap q[2],q[8],q[9];
id q[5];
swap q[0],q[8];
id q[7];
ccx q[9],q[5],q[1];
u2(5.8084647,1.1176164) q[4];
u2(4.7263298,4.3789858) q[2];
u3(0.020578508,2.4686378,3.0257602) q[6];
tdg q[3];
rz(0.55181581) q[6];
ry(4.4718432) q[1];
ch q[7],q[9];
cswap q[8],q[2],q[5];
crz(2.1033526) q[3],q[4];
rx(0.28902683) q[0];
rzz(3.2996063) q[9],q[1];
ccx q[6],q[5],q[0];
rz(3.1518481) q[2];
sdg q[8];
cu3(1.5756555,3.402049,2.3841936) q[7],q[4];
t q[3];
z q[6];
cswap q[5],q[7],q[4];
cswap q[2],q[3],q[1];
cu1(0.32577936) q[9],q[0];
id q[8];
ry(1.4277318) q[5];
cswap q[7],q[6],q[3];
crz(4.8314502) q[4],q[9];
cx q[0],q[8];
crz(4.405318) q[2],q[1];
ccx q[7],q[8],q[0];
swap q[5],q[3];
cz q[6],q[1];
cu1(5.6482891) q[2],q[4];
sdg q[9];
cu1(4.3394888) q[8],q[4];
u1(0.3444177) q[7];
cswap q[0],q[6],q[5];
rzz(4.5953981) q[9],q[2];
tdg q[3];
id q[1];
ccx q[0],q[9],q[2];
cy q[3],q[6];
ccx q[4],q[7],q[8];
cx q[5],q[1];
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
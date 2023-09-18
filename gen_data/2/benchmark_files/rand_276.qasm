OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ry(2.9113522) q[1];
x q[7];
sdg q[9];
ccx q[3],q[4],q[5];
ccx q[8],q[6],q[2];
s q[0];
cu3(4.1898955,1.7649847,5.5528198) q[1],q[4];
ry(3.1397727) q[2];
cswap q[7],q[3],q[8];
cz q[5],q[6];
cu1(0.52526467) q[0],q[9];
rx(5.2419534) q[6];
cy q[0],q[8];
u3(4.1275375,3.9299091,2.63293) q[5];
u1(0.13604151) q[7];
cu1(0.65758159) q[3],q[9];
h q[4];
cu1(4.3008852) q[2],q[1];
cswap q[0],q[1],q[8];
id q[3];
ch q[2],q[7];
ccx q[9],q[6],q[4];
rz(3.6064905) q[5];
cy q[8],q[6];
cswap q[2],q[5],q[9];
cu3(2.8488523,5.5384405,4.1991778) q[7],q[4];
crz(2.5722247) q[1],q[0];
rx(3.9014853) q[3];
ccx q[7],q[4],q[9];
cu3(0.80591255,3.2228456,5.6558589) q[0],q[8];
y q[3];
cswap q[2],q[1],q[5];
u1(4.3120894) q[6];
rx(2.3601723) q[5];
cu1(0.59534521) q[2],q[0];
ch q[9],q[6];
tdg q[1];
cy q[7],q[4];
y q[3];
tdg q[8];
crz(4.200696) q[1],q[9];
crz(0.97266093) q[6],q[8];
cswap q[4],q[7],q[5];
tdg q[2];
cu1(5.8956799) q[3],q[0];
ccx q[4],q[5],q[8];
ccx q[9],q[1],q[3];
ch q[6],q[2];
u1(0.76947412) q[7];
u1(5.6142113) q[0];
cswap q[5],q[9],q[1];
sdg q[7];
u1(3.686926) q[0];
cx q[3],q[4];
cu3(0.51107361,1.1126056,2.8644851) q[2],q[6];
ry(4.9035433) q[8];
cx q[9],q[1];
swap q[7],q[4];
id q[3];
u2(6.1386753,4.4205237) q[2];
cswap q[8],q[6],q[0];
id q[5];
u1(0.46855823) q[6];
x q[3];
cswap q[7],q[9],q[1];
sdg q[2];
ccx q[5],q[4],q[8];
t q[0];
u3(1.8334832,3.8054019,3.3693749) q[4];
sdg q[9];
ccx q[8],q[7],q[3];
h q[6];
ccx q[1],q[0],q[2];
h q[5];
cswap q[3],q[6],q[9];
ch q[5],q[1];
cswap q[0],q[8],q[7];
cz q[2],q[4];
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
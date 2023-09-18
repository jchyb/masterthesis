OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[5],q[4],q[3];
rz(1.9377547) q[1];
crz(4.5255007) q[0],q[6];
cswap q[8],q[9],q[2];
tdg q[7];
swap q[0],q[3];
ry(5.3952069) q[7];
cswap q[2],q[5],q[1];
ry(5.3471424) q[6];
ccx q[9],q[4],q[8];
ry(3.6813551) q[2];
cswap q[3],q[4],q[7];
cy q[0],q[5];
rz(1.8127642) q[6];
sdg q[9];
crz(1.1627632) q[1],q[8];
u1(5.4004357) q[6];
x q[2];
cx q[8],q[0];
cswap q[3],q[7],q[4];
ccx q[1],q[5],q[9];
x q[6];
cz q[4],q[7];
ccx q[8],q[5],q[0];
u2(1.6000467,0.64389439) q[9];
cswap q[3],q[2],q[1];
x q[0];
cu3(2.0509222,0.35950147,0.2278699) q[3],q[6];
cy q[1],q[8];
ccx q[9],q[5],q[7];
y q[4];
y q[2];
rx(1.7119436) q[2];
cz q[6],q[1];
cu1(1.4676027) q[3],q[7];
ccx q[0],q[4],q[8];
u2(1.1824855,2.4328826) q[9];
z q[5];
ccx q[8],q[5],q[3];
x q[2];
ch q[6],q[4];
ccx q[9],q[1],q[7];
s q[0];
cswap q[2],q[6],q[8];
cswap q[5],q[7],q[3];
ccx q[0],q[4],q[9];
x q[1];
ccx q[2],q[8],q[5];
crz(3.992277) q[9],q[0];
cu1(3.1324177) q[1],q[3];
cu1(1.3716828) q[6],q[4];
u2(1.5695974,0.47864472) q[7];
u1(0.086055215) q[8];
id q[4];
crz(4.8717685) q[5],q[2];
ry(4.8531754) q[1];
rzz(5.9325696) q[7],q[9];
cswap q[6],q[0],q[3];
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
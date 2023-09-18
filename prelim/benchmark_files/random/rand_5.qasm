OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cu1(5.1642123) q[0],q[6];
ccx q[4],q[5],q[2];
ch q[7],q[1];
swap q[8],q[9];
u2(4.9645027,0.48436242) q[3];
cy q[7],q[5];
cswap q[4],q[2],q[1];
cy q[6],q[8];
ch q[9],q[3];
x q[0];
cswap q[4],q[1],q[7];
id q[8];
ccx q[9],q[5],q[2];
cy q[0],q[3];
y q[6];
cx q[2],q[1];
cz q[9],q[3];
ccx q[4],q[7],q[6];
ccx q[8],q[5],q[0];
t q[1];
y q[2];
cswap q[8],q[7],q[6];
ccx q[9],q[0],q[3];
x q[4];
tdg q[5];
ccx q[0],q[8],q[6];
cswap q[2],q[4],q[9];
sdg q[5];
u1(0.48952238) q[7];
rzz(5.0973151) q[3],q[1];
rz(2.3008989) q[2];
cswap q[0],q[4],q[9];
rx(1.3165795) q[1];
cswap q[5],q[8],q[6];
s q[3];
ry(1.1082723) q[7];
cz q[6],q[8];
cu1(0.43527435) q[0],q[1];
swap q[9],q[7];
x q[2];
cswap q[5],q[3],q[4];
cswap q[6],q[8],q[3];
cswap q[2],q[7],q[1];
rz(5.2958103) q[5];
ccx q[0],q[4],q[9];
ry(2.0060436) q[9];
ccx q[8],q[1],q[7];
t q[2];
id q[3];
id q[5];
rz(4.1506473) q[4];
rzz(2.3926902) q[0],q[6];
cswap q[4],q[8],q[9];
crz(4.8314298) q[1],q[5];
y q[3];
cswap q[7],q[2],q[0];
sdg q[6];
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
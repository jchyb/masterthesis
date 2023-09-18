OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[4],q[6],q[7];
cswap q[3],q[5],q[0];
ch q[8],q[1];
ch q[2],q[9];
crz(4.7371986) q[7],q[1];
id q[4];
ccx q[6],q[8],q[9];
u2(4.2873008,0.8294837) q[2];
cswap q[5],q[0],q[3];
cswap q[5],q[4],q[6];
z q[8];
z q[9];
cu1(5.7682302) q[1],q[3];
cswap q[7],q[2],q[0];
ccx q[7],q[1],q[3];
u1(5.4762519) q[4];
ccx q[2],q[0],q[8];
u1(1.7246927) q[6];
u1(0.2520299) q[5];
rz(1.7590775) q[9];
ccx q[8],q[5],q[2];
sdg q[6];
ch q[1],q[0];
swap q[9],q[7];
rzz(1.6889114) q[3],q[4];
s q[6];
cz q[3],q[0];
cu3(5.584888,3.1421573,5.4141261) q[2],q[1];
rx(2.6653973) q[9];
cy q[5],q[8];
rzz(3.1360173) q[4],q[7];
cu3(5.2509014,6.0194348,4.8340042) q[6],q[7];
cx q[5],q[4];
swap q[0],q[9];
y q[3];
swap q[8],q[2];
t q[1];
ccx q[8],q[9],q[6];
tdg q[1];
cswap q[0],q[5],q[2];
ccx q[4],q[3],q[7];
t q[7];
cx q[1],q[0];
ry(5.1622041) q[3];
cswap q[4],q[8],q[6];
cz q[9],q[5];
sdg q[2];
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
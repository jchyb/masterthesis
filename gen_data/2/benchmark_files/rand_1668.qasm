OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
h q[0];
cswap q[2],q[9],q[6];
t q[8];
cx q[4],q[7];
ccx q[3],q[5],q[1];
rz(0.34112323) q[7];
cswap q[5],q[3],q[8];
swap q[9],q[6];
ccx q[2],q[0],q[4];
rx(2.738869) q[1];
crz(0.58422251) q[6],q[2];
ccx q[5],q[7],q[9];
cz q[8],q[1];
cswap q[0],q[4],q[3];
rzz(2.0329673) q[8],q[3];
cx q[1],q[5];
ccx q[0],q[9],q[2];
cswap q[4],q[6],q[7];
ry(2.4330377) q[2];
ccx q[7],q[8],q[4];
crz(5.8218197) q[1],q[0];
rzz(1.564642) q[9],q[6];
cu1(2.5240171) q[3],q[5];
u1(0.60443965) q[7];
ccx q[1],q[6],q[8];
cswap q[9],q[4],q[2];
swap q[3],q[0];
u1(5.0510295) q[5];
ch q[7],q[6];
id q[2];
cz q[0],q[4];
z q[1];
cswap q[8],q[5],q[9];
y q[3];
ccx q[7],q[9],q[1];
cu1(5.0571276) q[4],q[8];
cx q[0],q[5];
y q[6];
t q[2];
z q[3];
u3(0.53235143,0.98683678,1.4593905) q[4];
cu1(4.6393429) q[9],q[0];
id q[3];
h q[1];
cy q[7],q[5];
ccx q[2],q[6],q[8];
ch q[1],q[6];
ccx q[0],q[3],q[4];
cswap q[2],q[5],q[8];
swap q[9],q[7];
cswap q[7],q[3],q[4];
u1(1.5425629) q[2];
cswap q[6],q[1],q[5];
cz q[0],q[8];
u2(6.2289174,0.39211958) q[9];
ccx q[5],q[0],q[2];
rzz(5.2184764) q[4],q[3];
cswap q[6],q[1],q[7];
ry(4.1912066) q[8];
rz(5.6099099) q[9];
cswap q[8],q[2],q[3];
cy q[7],q[0];
ccx q[6],q[1],q[9];
cz q[4],q[5];
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
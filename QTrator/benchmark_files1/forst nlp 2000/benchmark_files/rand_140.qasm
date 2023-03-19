OPENQASM 2.0;
include "qelib1.inc";
qreg q[11];
creg c[11];
crz(2.9829378) q[2],q[7];
rzz(5.4825934) q[10],q[3];
u1(1.7760137) q[1];
h q[6];
cx q[0],q[4];
ry(5.060881) q[8];
cy q[5],q[9];
cswap q[2],q[1],q[5];
cu3(2.0953698,4.1874634,3.1414961) q[6],q[7];
ry(0.26725804) q[10];
z q[0];
crz(1.6406931) q[4],q[3];
cx q[8],q[9];
rz(6.2110196) q[8];
x q[6];
rx(5.9357229) q[7];
ccx q[3],q[9],q[2];
cx q[5],q[1];
h q[10];
ch q[0],q[4];
tdg q[5];
ccx q[3],q[4],q[2];
ccx q[1],q[7],q[6];
x q[0];
ccx q[9],q[10],q[8];
ccx q[3],q[1],q[4];
cy q[7],q[2];
x q[9];
cswap q[5],q[10],q[8];
t q[6];
tdg q[0];
t q[9];
ccx q[5],q[0],q[6];
cz q[3],q[8];
rx(2.7844696) q[1];
cswap q[7],q[2],q[10];
id q[4];
cswap q[6],q[4],q[0];
cswap q[9],q[7],q[8];
cswap q[5],q[3],q[1];
u2(2.7514953,3.8358216) q[2];
rx(4.871067) q[10];
t q[2];
rzz(4.250607) q[6],q[5];
ccx q[0],q[3],q[8];
t q[7];
cy q[1],q[10];
h q[9];
rz(3.6187862) q[4];
cswap q[1],q[4],q[8];
rzz(2.3667045) q[9],q[5];
rz(1.3618614) q[6];
cswap q[10],q[2],q[7];
cu3(3.8419184,2.0324081,3.0671756) q[3],q[0];
ch q[0],q[6];
cu3(6.2528839,2.2732972,2.8119258) q[8],q[1];
u1(4.0080071) q[9];
u3(1.4296582,0.81934473,3.348357) q[7];
ccx q[4],q[10],q[5];
cx q[2],q[3];
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
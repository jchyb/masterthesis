OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[1],q[6],q[3];
cu1(1.3727942) q[0],q[7];
cswap q[9],q[8],q[5];
rzz(1.4996475) q[4],q[2];
sdg q[1];
ry(3.3727137) q[0];
cz q[7],q[2];
ccx q[6],q[8],q[9];
ccx q[3],q[4],q[5];
cu1(5.8572021) q[9],q[0];
cx q[2],q[5];
cswap q[3],q[6],q[1];
tdg q[8];
z q[7];
ry(4.0541429) q[4];
rzz(1.5548946) q[2],q[1];
cu3(3.9842014,3.1104757,2.6763336) q[3],q[6];
cu3(3.1228141,4.7923909,6.203813) q[4],q[9];
swap q[8],q[0];
cy q[7],q[5];
cswap q[8],q[9],q[6];
cu3(5.267218,2.7947253,0.65289749) q[2],q[4];
cswap q[5],q[1],q[0];
cz q[7],q[3];
y q[3];
crz(4.783195) q[8],q[2];
swap q[5],q[0];
ry(2.0199095) q[9];
ccx q[4],q[1],q[7];
rx(3.942606) q[6];
rzz(4.3005896) q[9],q[1];
ccx q[5],q[6],q[8];
ccx q[0],q[4],q[7];
u3(5.6248894,0.16821738,3.1712016) q[2];
rx(2.1866675) q[3];
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

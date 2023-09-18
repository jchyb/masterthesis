OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
z q[1];
cz q[5],q[8];
crz(4.7921882) q[6],q[7];
t q[3];
s q[0];
sdg q[2];
swap q[9],q[4];
rx(4.1415199) q[7];
tdg q[4];
cy q[9],q[2];
x q[6];
z q[8];
cswap q[3],q[0],q[5];
x q[1];
ccx q[1],q[7],q[5];
t q[9];
cswap q[3],q[8],q[2];
ccx q[6],q[0],q[4];
cswap q[7],q[2],q[6];
swap q[4],q[0];
rzz(2.1839606) q[1],q[3];
cswap q[9],q[8],q[5];
crz(1.1794484) q[8],q[6];
ccx q[3],q[9],q[4];
h q[2];
swap q[5],q[7];
ch q[0],q[1];
swap q[8],q[6];
cy q[0],q[2];
ccx q[1],q[7],q[9];
ry(2.355306) q[4];
u2(4.6826326,4.4618104) q[5];
u3(4.9900221,1.1680366,0.32799652) q[3];
ry(3.0254752) q[6];
sdg q[4];
s q[2];
cz q[0],q[9];
swap q[7],q[5];
cy q[8],q[1];
rz(2.486758) q[3];
rzz(1.5739037) q[1],q[0];
ccx q[7],q[6],q[5];
cu3(2.5315011,2.9094444,5.0451867) q[8],q[3];
ccx q[4],q[2],q[9];
cu3(4.4224328,4.2833417,1.2903469) q[6],q[4];
id q[0];
x q[2];
cswap q[8],q[5],q[3];
ry(2.9133682) q[7];
rzz(0.64343266) q[9],q[1];
cu3(1.9091524,5.3322955,0.031277439) q[7],q[3];
cu3(2.4867946,4.9120348,2.9788625) q[5],q[1];
cswap q[9],q[6],q[2];
u3(1.0994769,5.7840594,5.2743863) q[4];
u3(5.7930518,3.513287,4.3120335) q[8];
z q[0];
crz(3.3408878) q[7],q[1];
y q[5];
cx q[2],q[3];
cx q[9],q[0];
x q[4];
rx(2.0655121) q[6];
sdg q[8];
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
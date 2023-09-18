OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rz(0.67195758) q[5];
ccx q[3],q[1],q[8];
cx q[7],q[9];
x q[4];
u2(4.0664272,2.0640781) q[0];
cu3(0.027775308,5.5038064,3.7148704) q[2],q[6];
cu3(4.8753705,4.4955446,5.6518915) q[9],q[3];
cswap q[6],q[0],q[1];
rz(0.71301861) q[5];
ch q[7],q[8];
swap q[4],q[2];
ccx q[2],q[6],q[7];
tdg q[0];
rz(4.4708093) q[5];
x q[9];
rzz(3.9639055) q[1],q[4];
u2(3.3955143,0.66605196) q[8];
h q[3];
ccx q[4],q[3],q[5];
u3(4.0979783,4.392492,4.7311619) q[6];
crz(2.5107816) q[1],q[7];
cswap q[2],q[8],q[9];
tdg q[0];
ccx q[0],q[9],q[8];
cswap q[6],q[4],q[5];
rz(4.7920219) q[7];
ccx q[3],q[2],q[1];
ccx q[6],q[4],q[9];
ch q[5],q[0];
ccx q[8],q[1],q[3];
rz(5.2458949) q[2];
rz(2.6443403) q[7];
ry(4.5549365) q[5];
ccx q[8],q[3],q[1];
u1(0.16366139) q[6];
ccx q[4],q[0],q[2];
cx q[7],q[9];
cswap q[9],q[7],q[8];
cswap q[0],q[6],q[1];
z q[5];
cx q[2],q[4];
z q[3];
cswap q[1],q[3],q[0];
h q[9];
ccx q[6],q[8],q[7];
rz(2.6915622) q[5];
crz(0.72992318) q[4],q[2];
crz(2.5719682) q[6],q[2];
rx(2.1808937) q[1];
cswap q[8],q[3],q[7];
swap q[9],q[4];
swap q[0],q[5];
cu3(5.0409663,3.356699,4.2215322) q[9],q[2];
u3(0.1574567,3.5126163,0.14318964) q[4];
z q[8];
cswap q[3],q[6],q[0];
x q[5];
x q[7];
u1(1.6606392) q[1];
ccx q[7],q[3],q[0];
x q[6];
cswap q[8],q[4],q[9];
cx q[5],q[1];
z q[2];
cx q[7],q[8];
cu1(1.8212934) q[2],q[5];
ccx q[1],q[6],q[3];
cu3(4.9871798,4.5652346,1.6059249) q[4],q[0];
s q[9];
sdg q[0];
cswap q[2],q[5],q[7];
x q[6];
rz(0.76875828) q[8];
h q[1];
cz q[9],q[3];
z q[4];
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
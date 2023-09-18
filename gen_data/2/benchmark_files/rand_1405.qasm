OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[0],q[7],q[4];
cx q[5],q[3];
ch q[9],q[6];
u2(4.6213821,0.84306248) q[8];
ch q[2],q[1];
cswap q[2],q[1],q[7];
u2(5.8785725,0.025137462) q[5];
cx q[9],q[8];
cswap q[6],q[3],q[4];
ry(1.8109055) q[0];
cswap q[8],q[5],q[4];
id q[6];
rzz(5.1189862) q[1],q[2];
rzz(3.3038435) q[0],q[7];
x q[9];
s q[3];
ccx q[9],q[4],q[2];
s q[3];
tdg q[1];
cswap q[6],q[8],q[0];
u2(4.4409117,1.0384144) q[7];
id q[5];
u1(3.4579175) q[1];
t q[3];
sdg q[2];
u3(2.458657,5.3545202,1.9082131) q[8];
rz(2.6518781) q[6];
ccx q[9],q[4],q[0];
rx(4.7518824) q[7];
rz(4.639997) q[5];
id q[3];
ccx q[7],q[5],q[2];
cswap q[1],q[9],q[4];
y q[6];
ry(6.2214192) q[8];
rx(4.9447312) q[0];
rzz(2.9105701) q[2],q[1];
crz(0.86966177) q[0],q[6];
cx q[8],q[3];
id q[9];
ch q[4],q[5];
z q[7];
ccx q[6],q[5],q[0];
cx q[7],q[9];
z q[3];
swap q[1],q[4];
sdg q[8];
x q[2];
cswap q[2],q[5],q[0];
cz q[8],q[7];
ccx q[1],q[4],q[6];
s q[3];
t q[9];
cx q[0],q[5];
ch q[2],q[4];
z q[1];
rz(3.1994838) q[9];
ccx q[6],q[8],q[3];
rx(3.0396647) q[7];
cy q[0],q[8];
ccx q[3],q[6],q[2];
crz(2.6931991) q[9],q[1];
cswap q[7],q[5],q[4];
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
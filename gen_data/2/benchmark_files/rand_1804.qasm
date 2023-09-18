OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[8],q[9],q[6];
cswap q[2],q[7],q[4];
cu1(4.3095926) q[0],q[1];
s q[3];
t q[5];
z q[6];
cx q[0],q[3];
y q[7];
y q[9];
t q[2];
cswap q[4],q[8],q[5];
rx(4.4753872) q[1];
cswap q[2],q[4],q[3];
cswap q[5],q[8],q[9];
cswap q[0],q[7],q[1];
s q[6];
ccx q[2],q[4],q[8];
ccx q[9],q[0],q[1];
swap q[5],q[3];
ry(1.0783949) q[6];
t q[7];
x q[3];
cswap q[8],q[6],q[4];
u2(2.3042756,0.26235212) q[2];
ccx q[5],q[9],q[1];
z q[7];
id q[0];
rz(1.9243927) q[9];
z q[2];
rz(3.0620319) q[8];
cu1(6.0450855) q[3],q[0];
cy q[7],q[6];
crz(4.5123398) q[1],q[4];
h q[5];
cu3(5.3621653,0.22460003,4.4809851) q[8],q[1];
crz(1.4988358) q[6],q[2];
cu1(4.3572696) q[9],q[5];
id q[3];
tdg q[7];
tdg q[0];
u1(3.8893984) q[4];
swap q[8],q[3];
cy q[6],q[7];
cswap q[5],q[4],q[0];
s q[9];
x q[1];
id q[2];
s q[7];
t q[0];
ry(5.9015944) q[1];
cy q[8],q[5];
cswap q[3],q[4],q[9];
crz(1.5330802) q[2],q[6];
s q[4];
x q[8];
rx(4.0137253) q[6];
cswap q[5],q[2],q[7];
cu3(1.4413473,2.9056463,0.015138289) q[3],q[1];
u2(4.8921443,4.9881498) q[9];
u2(3.3487913,4.3917523) q[0];
crz(0.46966133) q[4],q[5];
cswap q[9],q[6],q[7];
cswap q[0],q[1],q[3];
crz(2.0887118) q[8],q[2];
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
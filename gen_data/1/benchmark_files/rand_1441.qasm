OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[4],q[0],q[9];
ccx q[5],q[3],q[8];
sdg q[2];
cswap q[7],q[1],q[6];
cswap q[7],q[4],q[9];
cswap q[6],q[8],q[0];
ccx q[3],q[2],q[5];
y q[1];
rz(4.1217319) q[2];
ch q[7],q[0];
cu3(1.5548338,4.5798029,6.1602368) q[4],q[6];
rz(4.051716) q[3];
cu3(4.102913,0.28204709,5.7294145) q[1],q[9];
h q[5];
t q[8];
ccx q[5],q[7],q[4];
ccx q[0],q[3],q[2];
tdg q[1];
cz q[8],q[6];
u3(5.9149188,0.7050177,2.8569787) q[9];
id q[7];
rzz(3.153387) q[0],q[8];
ccx q[2],q[1],q[6];
rzz(3.29499) q[5],q[9];
rzz(0.84132903) q[3],q[4];
sdg q[1];
y q[8];
cy q[2],q[0];
swap q[9],q[4];
ch q[7],q[3];
y q[6];
tdg q[5];
ccx q[8],q[9],q[1];
crz(4.2310096) q[6],q[5];
x q[0];
t q[3];
rzz(2.5833812) q[7],q[2];
sdg q[4];
ccx q[6],q[7],q[1];
rzz(4.2154797) q[2],q[4];
cswap q[3],q[0],q[8];
swap q[9],q[5];
ch q[0],q[3];
cu1(6.2603919) q[2],q[7];
ccx q[8],q[9],q[4];
h q[1];
sdg q[6];
h q[5];
rx(4.9939722) q[4];
cu1(2.5125701) q[9],q[5];
ccx q[0],q[3],q[6];
rx(4.4738231) q[8];
cswap q[7],q[2],q[1];
cz q[4],q[1];
cy q[0],q[6];
cx q[7],q[9];
x q[8];
cu1(1.9264018) q[3],q[5];
ry(0.32918869) q[2];
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
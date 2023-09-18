OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cx q[5],q[9];
ccx q[2],q[4],q[0];
ry(1.5204256) q[3];
cu3(1.8213391,3.0487807,5.590819) q[6],q[7];
ry(6.1251671) q[1];
u3(3.2966205,4.457987,3.472746) q[8];
cu3(3.9485795,0.3842468,3.8559262) q[7],q[3];
rx(3.7387935) q[8];
z q[6];
cswap q[4],q[0],q[5];
y q[9];
u1(5.9006808) q[1];
tdg q[2];
swap q[8],q[7];
ch q[9],q[6];
cx q[3],q[5];
x q[4];
cu1(2.4602362) q[2],q[0];
s q[1];
cswap q[1],q[8],q[3];
ch q[9],q[4];
z q[7];
cswap q[2],q[0],q[6];
z q[5];
rz(3.873152) q[3];
cswap q[6],q[0],q[4];
rx(2.5234264) q[7];
ccx q[5],q[2],q[9];
swap q[8],q[1];
rx(3.7894355) q[4];
ccx q[1],q[7],q[8];
u2(5.9115075,3.2626674) q[3];
t q[5];
rx(2.0237754) q[6];
cu1(2.2867018) q[2],q[9];
u1(0.16338647) q[0];
id q[0];
rzz(2.7469259) q[8],q[4];
t q[2];
id q[6];
ccx q[3],q[9],q[5];
s q[1];
y q[7];
cx q[7],q[6];
cy q[5],q[8];
z q[1];
u2(0.030938118,3.478854) q[3];
rz(0.76298849) q[2];
ccx q[9],q[4],q[0];
u3(1.8572652,2.4345411,4.3476654) q[5];
crz(4.6429565) q[7],q[1];
cswap q[2],q[8],q[0];
ch q[9],q[6];
y q[3];
u2(2.4760936,3.2870204) q[4];
cy q[0],q[6];
cswap q[4],q[9],q[2];
ccx q[8],q[7],q[5];
ch q[3],q[1];
cz q[7],q[5];
ry(0.096226189) q[9];
h q[1];
x q[2];
cz q[4],q[8];
ch q[3],q[6];
id q[0];
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
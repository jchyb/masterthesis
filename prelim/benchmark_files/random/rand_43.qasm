OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ch q[2],q[1];
y q[5];
ccx q[0],q[9],q[4];
ccx q[3],q[6],q[8];
sdg q[7];
crz(3.2065422) q[3],q[9];
cswap q[8],q[7],q[0];
cswap q[5],q[2],q[1];
u3(3.6880365,5.9992101,4.5635231) q[6];
z q[4];
cswap q[5],q[8],q[7];
swap q[4],q[1];
cswap q[2],q[0],q[9];
cx q[6],q[3];
rx(0.11589451) q[9];
ccx q[3],q[1],q[2];
cx q[6],q[7];
ry(5.8131021) q[4];
ccx q[8],q[5],q[0];
swap q[4],q[3];
cu3(0.51314037,2.2883743,3.3433747) q[6],q[8];
cswap q[0],q[7],q[1];
ry(0.75165516) q[9];
tdg q[5];
y q[2];
y q[2];
crz(2.6012218) q[7],q[5];
cswap q[1],q[8],q[6];
cswap q[0],q[9],q[3];
id q[4];
ch q[8],q[4];
cz q[5],q[2];
tdg q[9];
ccx q[6],q[1],q[0];
cz q[3],q[7];
rx(2.9423504) q[0];
cswap q[4],q[2],q[1];
tdg q[6];
tdg q[9];
y q[3];
cu1(0.14044804) q[5],q[8];
u1(1.4683406) q[7];
ccx q[0],q[8],q[1];
cy q[3],q[6];
ccx q[4],q[9],q[7];
rzz(3.3611054) q[2],q[5];
rz(4.1194063) q[6];
h q[0];
ccx q[2],q[1],q[4];
x q[3];
cswap q[9],q[7],q[8];
s q[5];
cswap q[9],q[0],q[4];
cz q[6],q[5];
cy q[8],q[1];
h q[2];
swap q[3],q[7];
cy q[5],q[3];
t q[6];
u1(5.5975445) q[8];
cswap q[9],q[2],q[4];
ccx q[7],q[0],q[1];
z q[7];
cswap q[2],q[8],q[4];
cx q[9],q[6];
cu1(4.5574834) q[3],q[0];
ch q[5],q[1];
rx(4.0745639) q[9];
cswap q[5],q[6],q[0];
x q[4];
cu1(5.5417152) q[2],q[1];
ccx q[8],q[3],q[7];
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

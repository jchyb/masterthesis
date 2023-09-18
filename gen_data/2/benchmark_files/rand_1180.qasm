OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cy q[1],q[2];
t q[6];
rzz(4.0386352) q[5],q[8];
cswap q[9],q[3],q[4];
cz q[7],q[0];
cu3(5.8024802,2.4327731,5.4992788) q[4],q[5];
t q[2];
swap q[0],q[6];
cswap q[3],q[9],q[7];
cz q[1],q[8];
cswap q[3],q[8],q[1];
ry(0.23024098) q[6];
ccx q[5],q[4],q[0];
rx(4.8320814) q[9];
s q[2];
t q[7];
swap q[1],q[8];
cx q[6],q[5];
cswap q[2],q[9],q[0];
tdg q[4];
x q[7];
tdg q[3];
cz q[1],q[4];
cx q[3],q[8];
ccx q[6],q[5],q[7];
ccx q[0],q[2],q[9];
u2(0.51832343,2.1070163) q[6];
y q[0];
cswap q[2],q[8],q[3];
y q[4];
cz q[1],q[9];
cx q[7],q[5];
cx q[8],q[3];
ccx q[6],q[4],q[7];
ch q[9],q[1];
s q[5];
t q[2];
rx(3.7077668) q[0];
ccx q[7],q[2],q[1];
cswap q[6],q[0],q[5];
ch q[3],q[4];
ch q[8],q[9];
u3(2.1185404,1.1834946,1.382001) q[2];
cswap q[1],q[0],q[8];
ccx q[6],q[4],q[9];
cz q[7],q[5];
u3(5.8273498,0.40283646,1.2110338) q[3];
crz(5.1430637) q[1],q[5];
ccx q[7],q[8],q[0];
rz(1.8946963) q[2];
rzz(1.3730602) q[6],q[4];
id q[3];
t q[9];
rx(0.85404118) q[3];
ch q[4],q[0];
h q[8];
s q[7];
ccx q[1],q[9],q[2];
rzz(5.2653947) q[5],q[6];
cu3(5.5161571,3.3859464,0.66425099) q[6],q[2];
cswap q[0],q[4],q[1];
id q[3];
cz q[8],q[7];
rzz(0.15708436) q[9],q[5];
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
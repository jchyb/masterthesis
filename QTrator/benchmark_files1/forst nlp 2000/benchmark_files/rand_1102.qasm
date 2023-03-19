OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[3],q[5],q[1];
cu3(0.096211096,5.8919082,3.7947499) q[7],q[8];
cswap q[2],q[9],q[4];
t q[6];
s q[0];
cu3(2.5533584,1.308894,1.1025273) q[6],q[7];
y q[9];
ccx q[5],q[2],q[3];
cy q[4],q[8];
rx(2.6819995) q[0];
id q[1];
ccx q[9],q[6],q[8];
cswap q[1],q[3],q[5];
sdg q[7];
cswap q[4],q[0],q[2];
cx q[0],q[5];
rz(3.1880385) q[8];
cu3(3.6374468,5.4288705,0.094036733) q[1],q[7];
cy q[3],q[6];
ccx q[2],q[9],q[4];
cswap q[2],q[1],q[0];
cswap q[4],q[6],q[5];
crz(5.7069231) q[3],q[9];
x q[8];
sdg q[7];
rzz(4.5559475) q[0],q[8];
ccx q[2],q[3],q[9];
u1(4.6135254) q[5];
cy q[6],q[7];
t q[4];
id q[1];
cu3(5.5552778,4.2191398,6.1735417) q[7],q[0];
cx q[6],q[4];
cu1(3.4533245) q[3],q[9];
ccx q[1],q[8],q[5];
id q[2];
cx q[9],q[6];
cu1(1.9991869) q[0],q[7];
h q[2];
ccx q[4],q[1],q[3];
x q[5];
rz(1.5188842) q[8];
cswap q[3],q[7],q[9];
ccx q[0],q[2],q[5];
ccx q[8],q[4],q[1];
rx(3.632827) q[6];
cswap q[3],q[0],q[9];
swap q[1],q[5];
ccx q[7],q[4],q[6];
u2(4.3889037,6.1386892) q[2];
id q[8];
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

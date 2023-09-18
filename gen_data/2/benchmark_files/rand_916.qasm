OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rx(5.636112) q[6];
cx q[8],q[9];
u2(1.9934183,4.0912319) q[1];
cswap q[4],q[0],q[3];
cx q[5],q[2];
y q[7];
ccx q[6],q[2],q[0];
u2(5.308033,0.0042528603) q[4];
u1(1.29856) q[7];
ccx q[8],q[9],q[5];
tdg q[1];
t q[3];
cz q[9],q[8];
cz q[6],q[5];
id q[7];
h q[3];
cswap q[2],q[1],q[4];
t q[0];
cswap q[7],q[0],q[5];
cz q[4],q[2];
cx q[1],q[6];
cx q[3],q[9];
rz(2.1305516) q[8];
cz q[0],q[3];
cswap q[9],q[7],q[5];
cswap q[8],q[2],q[6];
rx(1.5427267) q[1];
ry(4.6101179) q[4];
h q[2];
cu3(3.8487378,1.9958771,4.2772926) q[7],q[3];
s q[5];
tdg q[6];
z q[1];
cswap q[8],q[0],q[9];
sdg q[4];
cx q[8],q[7];
crz(3.8819273) q[1],q[0];
cu3(5.9576665,4.2858275,5.2475834) q[9],q[3];
cy q[4],q[5];
y q[6];
z q[2];
crz(3.9450299) q[7],q[5];
cu1(4.6272932) q[6],q[0];
cz q[2],q[3];
cy q[8],q[9];
cx q[4],q[1];
cu1(4.3396932) q[6],q[9];
swap q[2],q[7];
s q[3];
id q[8];
z q[0];
tdg q[5];
z q[1];
rx(1.0775924) q[4];
ccx q[3],q[5],q[2];
cy q[1],q[9];
sdg q[7];
u3(2.6808009,1.1189829,0.67261115) q[4];
cswap q[0],q[6],q[8];
rzz(2.0258113) q[2],q[9];
s q[8];
y q[0];
cu1(6.1161509) q[4],q[5];
cz q[6],q[3];
s q[7];
u1(3.225095) q[1];
tdg q[5];
cu3(4.9099006,5.7389021,6.2182689) q[7],q[1];
cswap q[4],q[8],q[9];
ch q[3],q[6];
cy q[0],q[2];
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
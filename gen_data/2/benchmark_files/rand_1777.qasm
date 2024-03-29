OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rzz(0.48398195) q[4],q[1];
u2(5.3407559,3.5543362) q[3];
ccx q[9],q[2],q[5];
cx q[7],q[8];
cu3(3.361413,4.0747274,0.53551192) q[6],q[0];
z q[8];
x q[1];
cz q[9],q[0];
id q[4];
cswap q[2],q[7],q[3];
swap q[6],q[5];
ccx q[8],q[1],q[3];
cu3(2.2978508,3.1583602,3.7987467) q[9],q[6];
rzz(3.648945) q[5],q[4];
ch q[7],q[2];
u3(4.2450103,0.17667452,1.9278544) q[0];
tdg q[6];
cx q[5],q[3];
id q[9];
cswap q[0],q[4],q[7];
cx q[8],q[1];
z q[2];
cx q[9],q[3];
u2(0.51035615,6.187053) q[0];
cu3(0.051461927,4.3089953,4.8472833) q[6],q[4];
cswap q[2],q[1],q[5];
cz q[8],q[7];
x q[9];
y q[5];
cz q[2],q[6];
cx q[8],q[1];
t q[0];
cy q[7],q[4];
u3(0.84093747,5.9074628,4.117806) q[3];
u3(1.6314316,3.0642118,5.2191933) q[2];
z q[4];
ccx q[9],q[0],q[8];
ccx q[7],q[1],q[5];
cu1(5.2276717) q[3],q[6];
ccx q[2],q[1],q[6];
u1(0.26396194) q[7];
cswap q[3],q[8],q[5];
cswap q[4],q[9],q[0];
z q[2];
cswap q[8],q[5],q[9];
cz q[7],q[0];
u2(0.43116835,2.9941056) q[1];
ccx q[3],q[6],q[4];
ccx q[4],q[2],q[9];
cy q[6],q[0];
cswap q[1],q[8],q[3];
tdg q[7];
x q[5];
h q[6];
cswap q[7],q[0],q[5];
cx q[2],q[1];
swap q[3],q[8];
rzz(4.8910158) q[9],q[4];
t q[3];
rzz(3.6733035) q[8],q[7];
cswap q[1],q[9],q[0];
ccx q[5],q[4],q[2];
t q[6];
cx q[9],q[3];
ccx q[0],q[8],q[2];
cy q[6],q[1];
cswap q[7],q[4],q[5];
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

OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rx(4.0914539) q[6];
cz q[8],q[2];
s q[4];
u1(0.42293242) q[9];
cy q[7],q[1];
swap q[5],q[0];
rx(4.9969563) q[3];
cu3(0.31948796,1.5502833,2.0447412) q[1],q[4];
cswap q[6],q[7],q[9];
cswap q[5],q[8],q[2];
cz q[3],q[0];
cu1(2.6032475) q[3],q[0];
rzz(5.035432) q[5],q[4];
cu3(2.5923457,1.7823318,0.61586966) q[8],q[2];
ccx q[7],q[9],q[6];
sdg q[1];
ry(0.62668474) q[5];
cswap q[1],q[8],q[9];
ch q[4],q[0];
crz(1.1861715) q[2],q[7];
h q[6];
rz(0.48563675) q[3];
ch q[2],q[5];
cu1(1.6394746) q[6],q[0];
swap q[7],q[3];
ccx q[8],q[9],q[1];
u3(2.8834796,2.8937759,1.8953995) q[4];
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
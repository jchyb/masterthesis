OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
swap q[3],q[0];
u3(2.5014274,0.71729292,3.1813253) q[8];
ccx q[1],q[9],q[6];
cu3(0.27265668,0.9006588,4.5494154) q[2],q[4];
cy q[7],q[5];
rzz(4.3573194) q[2],q[3];
cx q[6],q[5];
cu1(5.4075252) q[8],q[7];
cy q[1],q[9];
rz(1.5730598) q[4];
y q[0];
ccx q[7],q[4],q[6];
tdg q[8];
cu3(2.4740286,4.2070642,2.9079298) q[1],q[5];
cswap q[9],q[3],q[2];
u1(0.48910171) q[0];
rz(1.1897444) q[7];
crz(1.6581698) q[9],q[0];
ch q[5],q[3];
rz(1.9547242) q[6];
sdg q[8];
tdg q[4];
cy q[1],q[2];
ccx q[0],q[8],q[7];
cu3(4.8584681,4.7800163,0.99683906) q[3],q[4];
cu3(3.1599115,1.4765522,3.238474) q[6],q[5];
rzz(1.169461) q[1],q[2];
u1(2.4343136) q[9];
cu3(4.5602211,3.6421658,3.9925543) q[4],q[2];
crz(5.2576895) q[8],q[3];
ccx q[0],q[9],q[1];
cswap q[5],q[7],q[6];
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

OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
id q[6];
ry(2.2240127) q[8];
ccx q[4],q[9],q[2];
cswap q[3],q[1],q[0];
z q[5];
h q[7];
cswap q[1],q[5],q[2];
cswap q[3],q[7],q[9];
ry(4.5380778) q[4];
cswap q[0],q[6],q[8];
rzz(4.3971247) q[3],q[8];
ccx q[5],q[7],q[0];
crz(0.6165308) q[1],q[2];
id q[6];
ch q[9],q[4];
ch q[1],q[7];
z q[2];
cz q[4],q[5];
cswap q[3],q[9],q[6];
u2(4.6648515,2.4421038) q[0];
h q[8];
u1(4.4357306) q[6];
ccx q[5],q[1],q[9];
t q[4];
cswap q[2],q[7],q[3];
u3(2.3673502,4.1439997,3.4046482) q[0];
u2(1.8508631,0.17600154) q[8];
cswap q[5],q[2],q[7];
sdg q[3];
ch q[1],q[9];
ccx q[4],q[8],q[6];
t q[0];
cy q[3],q[6];
ccx q[1],q[5],q[7];
cswap q[2],q[9],q[4];
cu3(1.9588887,0.68340347,5.2595384) q[0],q[8];
x q[5];
z q[3];
ccx q[0],q[2],q[9];
cz q[4],q[1];
ccx q[7],q[6],q[8];
cswap q[4],q[7],q[6];
cz q[5],q[9];
cz q[0],q[8];
cswap q[1],q[2],q[3];
cswap q[8],q[1],q[2];
ry(1.2684254) q[4];
ccx q[6],q[9],q[3];
swap q[0],q[7];
h q[5];
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
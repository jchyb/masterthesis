OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
z q[7];
cu3(5.6822203,3.9429777,6.2259672) q[3],q[5];
cswap q[8],q[0],q[6];
z q[2];
ccx q[4],q[1],q[9];
ccx q[9],q[6],q[0];
cy q[3],q[1];
cx q[4],q[8];
u2(6.099347,1.0760401) q[2];
id q[5];
z q[7];
cz q[0],q[4];
z q[7];
cswap q[2],q[1],q[8];
cu3(1.1944306,2.9830385,3.7462104) q[5],q[3];
ch q[6],q[9];
cswap q[0],q[3],q[8];
cy q[2],q[7];
ch q[4],q[6];
ccx q[5],q[9],q[1];
cy q[4],q[8];
cu1(3.7295443) q[5],q[9];
z q[2];
cu1(0.25265075) q[1],q[6];
rzz(5.3463658) q[0],q[3];
h q[7];
cy q[5],q[7];
cswap q[2],q[8],q[6];
swap q[4],q[3];
z q[9];
s q[0];
tdg q[1];
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
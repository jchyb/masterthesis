OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[4],q[6],q[9];
cswap q[5],q[2],q[3];
z q[7];
ccx q[8],q[1],q[0];
rx(6.2218248) q[8];
x q[1];
cswap q[7],q[9],q[0];
ccx q[3],q[5],q[2];
swap q[4],q[6];
swap q[3],q[5];
cx q[7],q[1];
cu3(1.8439117,4.9144532,6.2204647) q[6],q[0];
ccx q[9],q[4],q[8];
rz(0.7400355) q[2];
rzz(2.2568137) q[7],q[6];
crz(5.1062198) q[2],q[5];
ccx q[9],q[3],q[1];
ccx q[0],q[8],q[4];
id q[3];
cu1(1.8536522) q[6],q[5];
swap q[8],q[9];
cu1(0.29909447) q[7],q[2];
sdg q[4];
cy q[1],q[0];
cswap q[9],q[6],q[4];
cswap q[1],q[0],q[7];
u2(2.7130226,0.53260407) q[8];
id q[5];
cu3(0.96735198,2.624646,4.2657175) q[2],q[3];
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
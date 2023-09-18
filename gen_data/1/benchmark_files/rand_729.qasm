OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[8],q[0],q[9];
cswap q[4],q[2],q[3];
cswap q[5],q[7],q[6];
s q[1];
ry(4.5761343) q[8];
x q[9];
rzz(0.99296398) q[2],q[0];
u2(4.2488541,4.9013416) q[1];
cswap q[6],q[5],q[7];
cx q[3],q[4];
swap q[5],q[1];
cx q[2],q[8];
crz(1.2878834) q[7],q[9];
cu1(4.4925027) q[4],q[3];
cx q[6],q[0];
x q[4];
cswap q[6],q[1],q[2];
z q[5];
rzz(2.0143601) q[0],q[8];
ch q[9],q[3];
u1(0.28203062) q[7];
ccx q[0],q[3],q[7];
swap q[5],q[4];
cx q[2],q[9];
swap q[1],q[6];
x q[8];
tdg q[2];
cswap q[7],q[1],q[3];
cz q[5],q[6];
ccx q[4],q[9],q[0];
z q[8];
rx(2.4301476) q[6];
cswap q[8],q[3],q[4];
cu3(1.8921448,1.7801335,2.2391231) q[2],q[1];
crz(5.4240056) q[0],q[7];
rzz(1.9109079) q[9],q[5];
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
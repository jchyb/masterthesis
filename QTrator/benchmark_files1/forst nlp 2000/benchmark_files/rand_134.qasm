OPENQASM 2.0;
include "qelib1.inc";
qreg q[13];
creg c[13];
u1(1.6073399) q[7];
s q[2];
ccx q[8],q[12],q[0];
cz q[1],q[6];
cswap q[11],q[4],q[10];
cu3(5.0325435,3.7039943,3.6622272) q[3],q[9];
rz(4.5362722) q[5];
crz(4.3024922) q[4],q[3];
cu3(2.4621574,4.4187847,2.6984324) q[1],q[2];
s q[5];
ry(4.5566273) q[10];
crz(3.2867148) q[7],q[11];
cx q[0],q[9];
x q[8];
tdg q[12];
id q[6];
ccx q[1],q[6],q[0];
cx q[2],q[11];
s q[5];
cz q[9],q[3];
z q[7];
cswap q[8],q[12],q[10];
id q[4];
rzz(5.9381256) q[8],q[0];
crz(2.1523219) q[11],q[12];
x q[7];
ccx q[4],q[1],q[2];
ccx q[10],q[6],q[5];
t q[3];
u1(1.3521695) q[9];
ch q[10],q[5];
tdg q[12];
cz q[4],q[1];
crz(2.7270583) q[7],q[6];
cz q[2],q[3];
cx q[9],q[0];
x q[11];
u1(4.6880596) q[8];
rzz(4.6724149) q[11],q[9];
cswap q[8],q[7],q[10];
swap q[5],q[0];
x q[2];
rzz(4.3335301) q[1],q[6];
crz(0.93385678) q[3],q[12];
z q[4];
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
measure q[10] -> c[10];
measure q[11] -> c[11];
measure q[12] -> c[12];
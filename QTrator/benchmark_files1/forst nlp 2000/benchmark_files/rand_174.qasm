OPENQASM 2.0;
include "qelib1.inc";
qreg q[11];
creg c[11];
cswap q[3],q[2],q[0];
id q[4];
z q[5];
cswap q[6],q[7],q[10];
tdg q[9];
cx q[1],q[8];
cswap q[8],q[0],q[7];
cx q[4],q[3];
t q[6];
cswap q[5],q[9],q[2];
crz(5.39723) q[1],q[10];
cswap q[8],q[3],q[5];
u1(5.3457548) q[1];
ccx q[10],q[7],q[4];
cswap q[0],q[9],q[6];
rz(6.2238879) q[2];
ry(5.5418115) q[1];
crz(3.9766481) q[8],q[0];
y q[3];
u1(0.47634953) q[9];
rzz(3.5006764) q[2],q[10];
cu1(5.2174715) q[4],q[5];
s q[7];
s q[6];
cu3(4.9607264,1.6634975,4.9807859) q[2],q[7];
crz(1.1525942) q[1],q[8];
rz(3.1375736) q[0];
sdg q[9];
z q[4];
swap q[5],q[3];
x q[10];
h q[6];
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

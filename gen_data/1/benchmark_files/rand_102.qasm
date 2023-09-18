OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
x q[6];
ch q[9],q[4];
ccx q[7],q[1],q[8];
cswap q[0],q[5],q[3];
t q[2];
ccx q[2],q[0],q[8];
h q[4];
z q[3];
y q[7];
ccx q[5],q[1],q[9];
sdg q[6];
cswap q[2],q[1],q[3];
ccx q[7],q[9],q[0];
rx(0.19865943) q[4];
cy q[8],q[5];
ry(1.31986) q[6];
ch q[1],q[3];
x q[8];
cx q[7],q[6];
cx q[0],q[2];
crz(5.9727022) q[4],q[9];
rz(5.9155173) q[5];
rz(0.63761733) q[9];
s q[2];
y q[4];
u2(3.7693469,5.2529816) q[7];
u2(4.9550025,3.8549322) q[8];
t q[6];
ccx q[3],q[1],q[5];
s q[0];
cswap q[9],q[6],q[3];
swap q[8],q[0];
rzz(2.2629342) q[4],q[7];
cswap q[1],q[2],q[5];
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
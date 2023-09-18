OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rzz(2.5695334) q[1],q[8];
ccx q[0],q[5],q[2];
y q[6];
h q[7];
swap q[3],q[9];
z q[4];
ch q[9],q[4];
u2(0.39024851,5.19613) q[1];
cy q[6],q[3];
id q[2];
cy q[5],q[0];
ry(1.3520089) q[7];
t q[8];
u3(4.1421753,1.6904628,4.6603096) q[7];
ccx q[0],q[8],q[9];
cx q[2],q[4];
cswap q[1],q[6],q[5];
rz(4.6767798) q[3];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[12];
creg c[12];
t q[6];
z q[11];
y q[7];
rx(0.71479041) q[1];
cx q[10],q[5];
ry(5.8913829) q[4];
y q[3];
rzz(4.5466813) q[2],q[8];
u1(1.8163389) q[0];
u2(0.13509995,6.1595548) q[9];
rzz(4.7596791) q[7],q[8];
ccx q[0],q[2],q[5];
ccx q[9],q[1],q[3];
cswap q[11],q[4],q[10];
ry(3.7132741) q[6];
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

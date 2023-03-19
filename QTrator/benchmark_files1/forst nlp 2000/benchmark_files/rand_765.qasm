OPENQASM 2.0;
include "qelib1.inc";
qreg q[9];
creg c[9];
cswap q[2],q[3],q[0];
x q[8];
cu3(0.48534213,5.7901777,3.3620664) q[7],q[6];
ch q[5],q[1];
rx(5.3155667) q[4];
crz(0.53208256) q[1],q[5];
u1(3.3658684) q[6];
cswap q[4],q[3],q[8];
cy q[0],q[2];
h q[7];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];
measure q[8] -> c[8];
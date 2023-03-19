OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
creg c[6];
rzz(0.33917563) q[0],q[2];
cswap q[4],q[5],q[3];
h q[1];
cz q[4],q[0];
rx(0.96512898) q[1];
z q[2];
rz(3.6461551) q[3];
tdg q[5];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
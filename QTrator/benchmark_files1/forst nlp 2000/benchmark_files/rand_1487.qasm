OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
creg c[6];
x q[1];
y q[5];
ch q[0],q[4];
y q[2];
ry(3.6654633) q[3];
cx q[4],q[1];
cswap q[0],q[3],q[5];
sdg q[2];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
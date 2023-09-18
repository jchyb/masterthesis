OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
tdg q[9];
cz q[5],q[4];
cswap q[8],q[0],q[1];
swap q[3],q[2];
cx q[6],q[7];
ccx q[8],q[4],q[0];
ccx q[5],q[7],q[2];
cy q[9],q[6];
ch q[1],q[3];
h q[9];
ry(3.7605875) q[1];
cswap q[4],q[2],q[7];
ccx q[6],q[3],q[5];
cy q[8],q[0];
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
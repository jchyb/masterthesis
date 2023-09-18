OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cy q[7],q[2];
ccx q[0],q[9],q[8];
ccx q[4],q[5],q[6];
h q[3];
sdg q[1];
rz(5.7671986) q[7];
rx(2.3534783) q[9];
cy q[6],q[2];
cu1(0.59556145) q[3],q[0];
cswap q[1],q[4],q[5];
tdg q[8];
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
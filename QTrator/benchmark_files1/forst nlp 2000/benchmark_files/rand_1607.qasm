OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
creg c[7];
cy q[5],q[1];
cswap q[3],q[6],q[4];
cu3(4.5940093,3.4354103,4.6637438) q[0],q[2];
crz(2.332891) q[4],q[0];
rzz(0.61990423) q[5],q[6];
cswap q[1],q[2],q[3];
ccx q[2],q[0],q[4];
z q[1];
cx q[6],q[3];
rz(5.4935078) q[5];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
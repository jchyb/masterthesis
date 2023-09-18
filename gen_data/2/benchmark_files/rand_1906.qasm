OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
swap q[1],q[3];
cswap q[6],q[2],q[4];
cswap q[5],q[9],q[0];
s q[8];
id q[7];
ch q[4],q[3];
u3(3.2124027,2.8750904,4.2192705) q[9];
cu1(4.050114) q[7],q[0];
cx q[1],q[8];
ccx q[6],q[5],q[2];
ry(2.4832104) q[4];
ccx q[3],q[9],q[8];
ccx q[6],q[0],q[1];
ccx q[5],q[7],q[2];
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
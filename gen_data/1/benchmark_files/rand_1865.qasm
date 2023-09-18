OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[3],q[9],q[8];
z q[6];
cu1(2.4972551) q[7],q[0];
cswap q[4],q[2],q[5];
s q[1];
cu3(3.579655,5.4326245,5.8347529) q[4],q[7];
x q[9];
id q[3];
crz(3.2581518) q[6],q[5];
ccx q[1],q[0],q[8];
ry(5.2477804) q[2];
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
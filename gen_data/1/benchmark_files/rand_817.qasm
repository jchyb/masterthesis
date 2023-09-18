OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
u2(5.5617589,6.1557851) q[7];
cswap q[4],q[2],q[5];
cu3(0.41399016,1.4417043,6.2303679) q[1],q[8];
ccx q[3],q[0],q[9];
u3(4.2023497,3.6610863,3.8686668) q[6];
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
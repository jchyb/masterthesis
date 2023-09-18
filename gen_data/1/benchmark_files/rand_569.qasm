OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
u3(2.3466705,3.7189031,6.1495927) q[3];
cu3(0.20698268,3.5924873,3.8383186) q[6],q[4];
cswap q[8],q[1],q[0];
cswap q[5],q[7],q[9];
u3(2.2211366,2.7294435,2.7002497) q[2];
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
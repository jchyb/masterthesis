OPENQASM 2.0;
include "qelib1.inc";
qreg q[11];
creg c[11];
rzz(5.7288043) q[8],q[9];
cswap q[5],q[0],q[2];
ry(6.2581954) q[10];
ccx q[4],q[6],q[7];
crz(5.3050491) q[3],q[1];
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
measure q[10] -> c[10];

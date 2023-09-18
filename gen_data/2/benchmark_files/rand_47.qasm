OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[4],q[8],q[9];
u2(4.5144711,1.51702) q[2];
cswap q[6],q[3],q[1];
sdg q[5];
rz(5.1892548) q[7];
x q[0];
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
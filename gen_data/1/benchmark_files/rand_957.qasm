OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
y q[2];
tdg q[7];
cu1(0.064772525) q[1],q[8];
ch q[6],q[9];
ccx q[3],q[4],q[5];
y q[0];
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
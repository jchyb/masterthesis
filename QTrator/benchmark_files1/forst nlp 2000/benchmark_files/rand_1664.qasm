OPENQASM 2.0;
include "qelib1.inc";
qreg q[9];
creg c[9];
rx(0.91728197) q[8];
sdg q[0];
swap q[4],q[1];
s q[7];
ccx q[6],q[3],q[2];
u2(4.6883514,0.40996467) q[5];
cz q[0],q[4];
cz q[8],q[6];
ccx q[3],q[7],q[5];
crz(0.3080754) q[1],q[2];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];
measure q[8] -> c[8];

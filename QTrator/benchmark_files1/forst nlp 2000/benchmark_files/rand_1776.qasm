OPENQASM 2.0;
include "qelib1.inc";
qreg q[13];
creg c[13];
cu1(2.0698721) q[12],q[9];
rzz(5.6009472) q[0],q[5];
u2(1.1932908,1.0856133) q[3];
cz q[1],q[10];
ccx q[2],q[11],q[6];
ccx q[4],q[7],q[8];
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
measure q[11] -> c[11];
measure q[12] -> c[12];

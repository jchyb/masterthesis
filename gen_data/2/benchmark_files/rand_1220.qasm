OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
y q[7];
ccx q[8],q[9],q[0];
crz(1.9306908) q[3],q[1];
rzz(5.1872758) q[6],q[2];
u2(5.3094695,4.2221102) q[4];
ry(3.2851133) q[5];
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
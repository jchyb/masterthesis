OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cx q[4],q[0];
ccx q[6],q[1],q[3];
rx(2.1564639) q[9];
swap q[2],q[8];
y q[7];
s q[5];
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
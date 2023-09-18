OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rzz(2.155451) q[5],q[6];
cu1(0.33679167) q[9],q[1];
t q[7];
cu1(0.82111124) q[2],q[0];
u2(1.8724688,1.2080128) q[3];
tdg q[4];
t q[8];
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
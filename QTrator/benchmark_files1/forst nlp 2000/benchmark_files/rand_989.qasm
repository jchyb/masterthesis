OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
creg c[6];
ccx q[2],q[4],q[3];
sdg q[5];
swap q[1],q[0];
x q[3];
ccx q[5],q[0],q[2];
rzz(4.6411101) q[1],q[4];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];

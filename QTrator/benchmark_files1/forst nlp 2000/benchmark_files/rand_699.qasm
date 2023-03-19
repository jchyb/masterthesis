OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg c[2];
rzz(3.7845221) q[0],q[1];
rx(5.7890739) q[0];
u2(0.29113678,5.9828509) q[1];
measure q[0] -> c[0];
measure q[1] -> c[1];

OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg c[2];
swap q[1],q[0];
cu1(5.3154196) q[1],q[0];
rzz(0.83964562) q[1],q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];

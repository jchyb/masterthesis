OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg c[2];
ry(0.19958448) q[1];
ry(3.6689019) q[0];
rzz(5.1636647) q[1],q[0];
crz(4.0775307) q[1],q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];

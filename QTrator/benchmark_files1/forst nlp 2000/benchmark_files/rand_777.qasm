OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg c[2];
cy q[1],q[0];
rzz(5.3895778) q[0],q[1];
h q[1];
s q[0];
sdg q[1];
u2(0.21573293,2.0610055) q[0];
swap q[0],q[1];
measure q[0] -> c[0];
measure q[1] -> c[1];

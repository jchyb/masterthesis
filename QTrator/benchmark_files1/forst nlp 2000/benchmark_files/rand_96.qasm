OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg c[2];
sdg q[1];
x q[0];
crz(5.3365187) q[1],q[0];
s q[0];
z q[1];
cx q[1],q[0];
swap q[0],q[1];
rz(6.1431979) q[0];
z q[1];
measure q[0] -> c[0];
measure q[1] -> c[1];
OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
creg c[1];
tdg q[0];
u2(3.9299219,3.8366076) q[0];
tdg q[0];
u2(6.1500478,3.5899571) q[0];
t q[0];
u2(0.6937838,2.5738957) q[0];
id q[0];
u2(0.44457674,3.9468472) q[0];
u1(1.5087339) q[0];
measure q[0] -> c[0];

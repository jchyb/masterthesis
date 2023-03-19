OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
creg c[1];
x q[0];
u3(1.4318837,1.2662386,2.755313) q[0];
u2(0.32743465,2.0536534) q[0];
tdg q[0];
measure q[0] -> c[0];

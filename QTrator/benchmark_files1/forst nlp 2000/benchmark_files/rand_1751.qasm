OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
creg c[1];
y q[0];
tdg q[0];
ry(3.8438369) q[0];
ry(1.6046231) q[0];
u1(2.7461728) q[0];
u3(6.1099587,1.6633344,1.2949224) q[0];
rx(2.4361171) q[0];
measure q[0] -> c[0];

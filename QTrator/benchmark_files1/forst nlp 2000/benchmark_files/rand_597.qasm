OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg c[2];
crz(1.9505322) q[1],q[0];
y q[0];
u3(5.969865,1.3520618,5.5370933) q[1];
rx(4.6631663) q[1];
y q[0];
cu1(2.9239719) q[0],q[1];
h q[0];
ry(2.2022734) q[1];
sdg q[1];
z q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];

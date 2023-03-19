OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg c[2];
rz(2.3065642) q[0];
h q[1];
swap q[1],q[0];
ch q[1],q[0];
rx(3.9348612) q[0];
rz(5.9379907) q[1];
u2(4.3177729,4.7302374) q[1];
ry(4.8449923) q[0];
crz(0.74446752) q[1],q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];

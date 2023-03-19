OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg c[3];
crz(5.8634727) q[0],q[2];
s q[1];
cx q[0],q[2];
id q[1];
crz(1.9700489) q[0],q[2];
rx(1.1864759) q[1];
ry(2.4126754) q[0];
x q[2];
rz(3.0075064) q[1];
ch q[0],q[2];
u1(1.4923086) q[1];
sdg q[1];
cx q[2],q[0];
rz(1.5234037) q[1];
rx(2.8650965) q[2];
u3(4.6982396,2.1343605,2.3151342) q[0];
cy q[0],q[1];
rx(1.3005005) q[2];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
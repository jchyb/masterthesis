OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg c[2];
cx q[0],q[1];
ry(1.5871502) q[1];
u1(2.9830996) q[0];
ch q[0],q[1];
u2(5.603952,2.3200043) q[1];
sdg q[0];
sdg q[1];
u2(0.56440448,3.2615495) q[0];
swap q[1],q[0];
id q[1];
s q[0];
u1(4.0251433) q[0];
z q[1];
rzz(5.7761142) q[0],q[1];
cz q[0],q[1];
u1(1.4885644) q[1];
id q[0];
tdg q[1];
z q[0];
cy q[1],q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];

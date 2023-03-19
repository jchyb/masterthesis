OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[5];
ry(0.80152377) q[3];
rzz(1.8237075) q[0],q[2];
rzz(1.5572871) q[4],q[1];
sdg q[1];
u1(4.9883976) q[2];
sdg q[4];
cy q[3],q[0];
u2(3.8191391,5.2235436) q[4];
ccx q[2],q[1],q[0];
rx(0.3607633) q[3];
ccx q[2],q[0],q[4];
h q[3];
rz(4.3076968) q[1];
ccx q[4],q[2],q[3];
swap q[1],q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];

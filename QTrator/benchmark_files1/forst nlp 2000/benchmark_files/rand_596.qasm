OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg c[4];
cu1(0.32135026) q[1],q[2];
ch q[3],q[0];
cswap q[1],q[2],q[0];
u2(2.5513247,3.1248951) q[3];
ry(2.365768) q[1];
ccx q[0],q[3],q[2];
ccx q[2],q[3],q[1];
rz(4.1817437) q[0];
ch q[2],q[0];
ch q[1],q[3];
crz(3.2465617) q[3],q[0];
cy q[2],q[1];
ccx q[3],q[1],q[2];
rz(0.065976884) q[0];
z q[3];
ccx q[0],q[1],q[2];
crz(0.74623798) q[2],q[0];
sdg q[1];
u1(1.9575851) q[3];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];

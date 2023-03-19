OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
creg c[6];
cu1(1.7387611) q[2],q[3];
swap q[0],q[1];
sdg q[4];
sdg q[5];
x q[2];
s q[5];
cswap q[4],q[1],q[0];
ry(4.757825) q[3];
ccx q[4],q[2],q[5];
cswap q[1],q[3],q[0];
cswap q[0],q[3],q[2];
id q[1];
crz(6.199815) q[5],q[4];
ccx q[1],q[4],q[0];
cu1(0.79622496) q[2],q[5];
u2(2.4324932,1.6901011) q[3];
z q[1];
cu1(2.880918) q[0],q[3];
cswap q[2],q[5],q[4];
t q[0];
cy q[3],q[5];
t q[4];
u1(4.849411) q[1];
ry(5.5141032) q[2];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];

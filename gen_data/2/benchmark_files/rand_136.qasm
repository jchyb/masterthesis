OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
id q[0];
rzz(5.0414281) q[2],q[5];
cy q[1],q[8];
cswap q[4],q[9],q[7];
rx(3.1274724) q[3];
u1(3.4871484) q[6];
swap q[5],q[3];
rx(3.5370938) q[6];
cswap q[7],q[9],q[1];
cu3(4.4008055,2.3979691,3.2045526) q[0],q[8];
y q[4];
id q[2];
id q[4];
id q[8];
cu1(1.0631545) q[7],q[0];
ch q[1],q[6];
ccx q[5],q[2],q[3];
ry(1.4851588) q[9];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];
measure q[8] -> c[8];
measure q[9] -> c[9];
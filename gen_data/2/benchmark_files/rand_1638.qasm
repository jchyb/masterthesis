OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
crz(3.4265309) q[0],q[2];
cswap q[9],q[7],q[5];
cswap q[3],q[4],q[6];
s q[8];
id q[1];
u1(6.0511932) q[3];
ccx q[0],q[7],q[8];
id q[9];
t q[6];
swap q[2],q[5];
s q[4];
u3(4.3577248,5.6039185,3.1956358) q[1];
ccx q[1],q[6],q[3];
u3(1.6947931,6.2164594,1.5221727) q[4];
ccx q[0],q[9],q[7];
u3(3.8778987,5.555003,1.2563489) q[2];
cx q[5],q[8];
z q[5];
z q[0];
ry(0.40760666) q[6];
ch q[1],q[4];
ch q[3],q[8];
cu3(5.5981812,1.7339482,5.4964044) q[7],q[2];
y q[9];
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
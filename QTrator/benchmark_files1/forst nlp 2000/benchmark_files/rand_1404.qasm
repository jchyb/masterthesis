OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[5];
cz q[2],q[3];
id q[0];
tdg q[1];
t q[4];
rz(4.3404113) q[2];
cy q[4],q[3];
crz(1.3796387) q[0],q[1];
cx q[3],q[0];
cswap q[2],q[1],q[4];
cswap q[1],q[2],q[0];
sdg q[3];
x q[4];
u3(2.8249818,5.0050845,5.1216175) q[4];
ccx q[1],q[2],q[0];
s q[3];
rx(5.5287114) q[2];
ch q[1],q[4];
cy q[3],q[0];
ccx q[1],q[0],q[2];
y q[3];
u3(0.9098235,3.7892801,4.2464714) q[4];
ccx q[4],q[2],q[0];
cu1(0.66680531) q[1],q[3];
cu1(4.1398001) q[1],q[3];
u3(1.1255339,0.66371452,4.910943) q[4];
tdg q[0];
y q[2];
ccx q[3],q[4],q[1];
rz(3.8166963) q[2];
x q[0];
swap q[1],q[4];
ccx q[2],q[0],q[3];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];

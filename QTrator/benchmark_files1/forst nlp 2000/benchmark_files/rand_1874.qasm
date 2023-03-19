OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg c[4];
ccx q[0],q[1],q[3];
u3(2.0249874,3.3367226,3.5846227) q[2];
ccx q[2],q[0],q[3];
x q[1];
t q[2];
ry(3.1877321) q[1];
sdg q[0];
u1(3.4198418) q[3];
ccx q[0],q[1],q[3];
rx(5.8480803) q[2];
sdg q[0];
ccx q[2],q[1],q[3];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
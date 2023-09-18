OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[6],q[3],q[7];
tdg q[8];
swap q[4],q[5];
ccx q[1],q[2],q[9];
x q[0];
u1(0.7896534) q[1];
crz(1.7655362) q[6],q[3];
tdg q[8];
ccx q[2],q[4],q[0];
ccx q[5],q[9],q[7];
tdg q[9];
t q[3];
ccx q[7],q[1],q[4];
cy q[6],q[5];
rz(1.1418705) q[8];
rx(3.9609071) q[0];
u3(0.83803083,5.065492,0.88099758) q[2];
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
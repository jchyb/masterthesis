OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cx q[9],q[1];
cy q[0],q[3];
sdg q[8];
s q[4];
ccx q[7],q[5],q[6];
u1(6.2773385) q[2];
cswap q[8],q[6],q[3];
t q[0];
ccx q[5],q[7],q[4];
cswap q[2],q[1],q[9];
sdg q[8];
cy q[2],q[6];
cz q[3],q[0];
crz(0.89819731) q[1],q[5];
cu3(2.7467408,3.6867134,4.2592088) q[9],q[7];
u2(2.0196121,5.2963433) q[4];
cswap q[1],q[3],q[7];
cy q[4],q[2];
cswap q[0],q[8],q[5];
x q[6];
z q[9];
cswap q[0],q[2],q[9];
rx(6.00335) q[7];
ccx q[6],q[5],q[1];
cswap q[8],q[3],q[4];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
creg c[7];
rx(0.42637241) q[2];
cswap q[6],q[4],q[3];
s q[1];
crz(5.395481) q[5],q[0];
t q[5];
cswap q[0],q[1],q[3];
id q[4];
rz(5.7838084) q[2];
rx(1.6207945) q[6];
cswap q[0],q[2],q[6];
cu1(4.1134379) q[1],q[5];
sdg q[3];
u1(5.5676688) q[4];
h q[6];
cswap q[3],q[0],q[4];
swap q[1],q[5];
t q[2];
ry(3.2845339) q[0];
cswap q[1],q[6],q[4];
cswap q[3],q[2],q[5];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
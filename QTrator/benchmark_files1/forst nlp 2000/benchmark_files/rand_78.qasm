OPENQASM 2.0;
include "qelib1.inc";
qreg q[12];
creg c[12];
crz(3.6561193) q[8],q[4];
u3(2.4374446,5.0057645,2.1743262) q[3];
sdg q[9];
cu1(3.3954396) q[5],q[1];
cswap q[7],q[2],q[6];
cy q[11],q[0];
tdg q[10];
cswap q[6],q[0],q[8];
swap q[5],q[2];
cswap q[3],q[7],q[4];
cu1(1.9944713) q[10],q[1];
ch q[9],q[11];
t q[11];
x q[9];
cswap q[1],q[6],q[7];
ccx q[0],q[5],q[3];
u3(0.088480274,2.8898371,2.6568201) q[10];
cswap q[2],q[4],q[8];
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
measure q[10] -> c[10];
measure q[11] -> c[11];

OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[8],q[3],q[4];
rx(4.2815715) q[5];
ch q[6],q[9];
ry(2.6727076) q[1];
x q[0];
x q[7];
s q[2];
cy q[4],q[5];
cswap q[8],q[3],q[6];
u3(5.5384798,0.91421273,2.8935277) q[1];
ccx q[7],q[9],q[0];
z q[2];
x q[4];
cswap q[0],q[5],q[7];
cu1(0.17772824) q[3],q[6];
crz(5.8900561) q[1],q[8];
cu3(1.8480815,5.1378109,0.52193721) q[9],q[2];
tdg q[4];
rzz(4.8567314) q[7],q[6];
cswap q[8],q[5],q[9];
cswap q[3],q[2],q[0];
tdg q[1];
ch q[6],q[9];
crz(0.046733413) q[7],q[1];
tdg q[5];
ch q[4],q[3];
cswap q[8],q[2],q[0];
tdg q[7];
sdg q[1];
ccx q[3],q[4],q[2];
u1(1.7388548) q[8];
ccx q[0],q[6],q[5];
tdg q[9];
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
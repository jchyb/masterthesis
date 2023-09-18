OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rz(2.1267678) q[2];
cy q[0],q[5];
u1(1.5649737) q[1];
cswap q[6],q[3],q[7];
cu1(3.0550786) q[8],q[4];
sdg q[9];
ccx q[5],q[2],q[3];
cu3(4.4499096,0.78781361,6.0625067) q[1],q[7];
cswap q[8],q[9],q[4];
cu1(4.2757537) q[6],q[0];
cu1(3.391121) q[8],q[5];
ch q[6],q[7];
ccx q[2],q[3],q[4];
ccx q[1],q[0],q[9];
cu3(1.8988792,2.1187558,1.277538) q[0],q[8];
cswap q[5],q[2],q[7];
ch q[9],q[1];
swap q[6],q[3];
sdg q[4];
rx(0.16379103) q[3];
cx q[8],q[6];
ccx q[0],q[7],q[4];
cswap q[1],q[5],q[2];
rz(2.4258016) q[9];
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
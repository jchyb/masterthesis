OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rzz(3.7690686) q[6],q[7];
ccx q[4],q[2],q[9];
rx(0.3759667) q[5];
t q[3];
cswap q[1],q[8],q[0];
cu3(4.0588995,5.2204216,1.619277) q[9],q[4];
y q[2];
cu3(3.5486306,3.5880578,1.5275054) q[7],q[0];
cy q[8],q[3];
ccx q[5],q[1],q[6];
cswap q[9],q[1],q[0];
ccx q[3],q[7],q[2];
u1(5.2627904) q[6];
cswap q[4],q[5],q[8];
ccx q[4],q[6],q[8];
cswap q[2],q[1],q[7];
ry(6.0876651) q[9];
ccx q[3],q[5],q[0];
ccx q[2],q[6],q[5];
sdg q[9];
ccx q[0],q[3],q[1];
cu3(5.8345909,4.4114982,0.43773922) q[4],q[8];
rz(6.0335247) q[7];
ccx q[6],q[8],q[4];
s q[0];
ccx q[1],q[5],q[9];
ccx q[7],q[2],q[3];
ccx q[8],q[6],q[1];
cx q[9],q[5];
s q[2];
cy q[4],q[3];
ry(3.7904515) q[7];
u3(2.895636,5.970835,3.9082388) q[0];
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
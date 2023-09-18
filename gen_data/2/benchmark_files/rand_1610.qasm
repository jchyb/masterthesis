OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cy q[8],q[6];
crz(0.92399248) q[4],q[9];
cswap q[2],q[5],q[3];
cu3(2.4362939,4.8347202,5.1221589) q[1],q[0];
u2(1.2611195,0.93417831) q[7];
cswap q[1],q[0],q[7];
u3(3.825495,0.35610498,3.421838) q[2];
rz(5.2724714) q[3];
cu3(5.6810121,4.3739251,2.0392696) q[4],q[9];
ccx q[6],q[8],q[5];
sdg q[0];
s q[1];
rz(3.8882867) q[2];
cswap q[3],q[9],q[7];
t q[4];
cu1(0.29288564) q[5],q[6];
rx(4.6469566) q[8];
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
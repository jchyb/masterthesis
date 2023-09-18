OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[4],q[5],q[9];
cswap q[3],q[7],q[0];
crz(5.9072614) q[1],q[8];
t q[6];
x q[2];
swap q[5],q[1];
cswap q[7],q[0],q[9];
ch q[4],q[2];
ccx q[6],q[3],q[8];
ry(1.41031) q[0];
cu3(0.36588313,5.1907405,4.8659109) q[4],q[5];
cz q[2],q[3];
rx(0.55754086) q[6];
cu3(0.35874519,0.9641001,0.66549311) q[1],q[7];
cu1(3.7659149) q[9],q[8];
cu1(4.6743976) q[0],q[1];
s q[3];
cx q[5],q[2];
rz(1.7664476) q[8];
id q[7];
u3(3.0718333,4.0127143,2.437999) q[6];
cy q[9],q[4];
ccx q[0],q[8],q[1];
cy q[3],q[7];
cy q[9],q[6];
x q[5];
crz(0.33806513) q[2],q[4];
cswap q[4],q[0],q[2];
ccx q[9],q[3],q[6];
cz q[5],q[7];
cy q[8],q[1];
u3(4.7694042,2.760226,2.1865862) q[0];
rx(2.1748184) q[1];
cswap q[2],q[4],q[6];
cu1(0.046512545) q[5],q[3];
crz(4.5217544) q[9],q[7];
tdg q[8];
swap q[3],q[1];
cswap q[2],q[0],q[7];
ccx q[6],q[5],q[9];
cu1(0.54386643) q[4],q[8];
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
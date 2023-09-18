OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[0],q[5],q[9];
t q[3];
rx(0.89447849) q[8];
ry(2.8834889) q[1];
id q[4];
swap q[2],q[6];
tdg q[7];
ccx q[0],q[6],q[9];
swap q[1],q[4];
rx(2.0400196) q[3];
cy q[8],q[7];
swap q[2],q[5];
tdg q[8];
ccx q[2],q[3],q[0];
swap q[4],q[5];
sdg q[9];
ccx q[6],q[7],q[1];
id q[7];
u1(6.2136039) q[3];
cswap q[4],q[5],q[2];
cswap q[6],q[8],q[0];
id q[1];
rz(3.9086291) q[9];
ccx q[5],q[1],q[3];
id q[8];
ccx q[7],q[4],q[6];
z q[2];
cx q[0],q[9];
cx q[6],q[4];
h q[5];
u3(4.6937337,2.0375158,0.5362273) q[8];
u2(1.4120151,2.475874) q[3];
s q[9];
crz(6.1506255) q[1],q[7];
cx q[0],q[2];
swap q[2],q[4];
cu3(3.6177186,4.3848968,1.0568936) q[3],q[6];
ccx q[5],q[8],q[9];
x q[0];
cu1(4.9397957) q[1],q[7];
cswap q[6],q[7],q[1];
ccx q[8],q[5],q[2];
cswap q[3],q[4],q[0];
u2(1.0945701,1.6849652) q[9];
cswap q[6],q[8],q[2];
ch q[1],q[3];
ch q[4],q[0];
swap q[9],q[5];
u1(4.9582626) q[7];
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
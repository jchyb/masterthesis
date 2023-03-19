OPENQASM 2.0;
include "qelib1.inc";
qreg q[8];
creg c[8];
ccx q[1],q[0],q[7];
cx q[6],q[4];
ch q[5],q[2];
x q[3];
ch q[5],q[2];
ch q[7],q[0];
cx q[6],q[3];
z q[1];
x q[4];
y q[3];
cswap q[2],q[0],q[4];
y q[7];
ry(5.6731636) q[6];
t q[1];
id q[5];
cu3(1.8703144,3.9822877,2.7151131) q[0],q[6];
ch q[3],q[1];
id q[4];
ccx q[5],q[7],q[2];
u3(2.6945744,5.4492603,1.9130058) q[6];
sdg q[3];
ccx q[5],q[7],q[0];
swap q[2],q[4];
rx(1.2003787) q[1];
ccx q[0],q[1],q[4];
ccx q[3],q[7],q[5];
cx q[2],q[6];
u2(2.6636825,2.0193404) q[6];
s q[3];
cswap q[0],q[2],q[1];
u3(5.1525913,4.737969,2.8266482) q[4];
s q[5];
z q[7];
rz(5.8161716) q[1];
ccx q[7],q[5],q[0];
ccx q[4],q[3],q[6];
rx(4.5343237) q[2];
tdg q[5];
u1(1.9821707) q[3];
cswap q[7],q[6],q[0];
crz(1.6431382) q[1],q[2];
tdg q[4];
x q[4];
ccx q[2],q[3],q[6];
rz(2.7026219) q[5];
swap q[7],q[0];
ry(4.9759913) q[1];
rx(2.8821282) q[2];
rx(1.3236995) q[5];
ch q[1],q[3];
ccx q[4],q[7],q[0];
z q[6];
u1(0.4255249) q[5];
cswap q[2],q[7],q[0];
swap q[6],q[4];
rz(2.7506946) q[1];
u2(4.4249821,0.64878347) q[3];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];

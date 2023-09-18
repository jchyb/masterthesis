OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
x q[1];
h q[0];
ry(3.3153361) q[8];
u2(4.2955489,1.8740821) q[4];
cz q[3],q[5];
s q[6];
ccx q[7],q[2],q[9];
u1(2.9904609) q[6];
cz q[2],q[9];
cy q[8],q[0];
ccx q[3],q[5],q[1];
rz(6.1485967) q[7];
s q[4];
ccx q[1],q[3],q[8];
crz(1.8514222) q[4],q[5];
cu1(2.6517705) q[2],q[0];
cz q[6],q[7];
id q[9];
h q[8];
u3(0.37489306,5.3366752,2.5485863) q[1];
s q[9];
sdg q[6];
cswap q[7],q[5],q[4];
z q[0];
cx q[2],q[3];
cz q[2],q[6];
rx(0.1191402) q[5];
x q[0];
cswap q[7],q[4],q[3];
ccx q[8],q[9],q[1];
crz(0.54007842) q[9],q[2];
cswap q[5],q[1],q[0];
z q[4];
y q[3];
t q[8];
cu3(0.65671447,3.6578287,1.4246961) q[6],q[7];
ch q[0],q[7];
id q[2];
u1(3.7951853) q[9];
sdg q[1];
ry(0.80847336) q[5];
cy q[8],q[6];
rx(3.2454196) q[4];
t q[3];
cswap q[3],q[6],q[4];
x q[0];
cx q[7],q[2];
rx(2.5479065) q[8];
cx q[1],q[9];
sdg q[5];
rz(5.5026072) q[2];
ch q[7],q[6];
id q[5];
s q[9];
sdg q[3];
ccx q[1],q[8],q[4];
y q[0];
swap q[5],q[4];
swap q[6],q[7];
u1(1.5819822) q[1];
rzz(1.9589397) q[0],q[3];
rzz(2.8911876) q[8],q[9];
rz(0.62407073) q[2];
x q[5];
cswap q[7],q[9],q[4];
cx q[3],q[0];
ch q[6],q[8];
ch q[1],q[2];
ccx q[0],q[2],q[7];
x q[4];
ccx q[1],q[9],q[3];
y q[8];
t q[5];
ry(4.6359821) q[6];
ccx q[7],q[9],q[8];
tdg q[2];
crz(2.444229) q[1],q[5];
rx(4.5534173) q[6];
cy q[0],q[3];
s q[4];
id q[7];
swap q[1],q[6];
cu1(2.5393079) q[9],q[2];
x q[4];
ccx q[0],q[3],q[5];
s q[8];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
creg c[6];
cswap q[2],q[1],q[3];
ccx q[5],q[0],q[4];
h q[2];
cswap q[3],q[5],q[1];
ch q[0],q[4];
s q[0];
cswap q[2],q[5],q[3];
swap q[4],q[1];
cu3(2.3024442,5.1135454,3.3936972) q[0],q[4];
u1(0.50682854) q[3];
ccx q[5],q[1],q[2];
ccx q[5],q[0],q[4];
cx q[2],q[1];
t q[3];
cz q[0],q[3];
u3(4.5601851,2.8387576,5.9762354) q[1];
h q[2];
cx q[5],q[4];
tdg q[4];
ccx q[1],q[0],q[2];
id q[3];
x q[5];
swap q[5],q[0];
ch q[3],q[2];
cu3(2.1843422,0.46286643,6.1725084) q[4],q[1];
cy q[4],q[1];
cx q[0],q[3];
z q[2];
ry(2.7789106) q[5];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];

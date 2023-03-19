OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[5];
cz q[4],q[3];
ch q[2],q[0];
x q[1];
u2(5.0204578,5.9405461) q[3];
cz q[4],q[1];
h q[2];
id q[0];
cz q[1],q[3];
x q[2];
cy q[4],q[0];
ccx q[3],q[1],q[4];
y q[0];
x q[2];
cswap q[4],q[0],q[1];
ch q[2],q[3];
h q[3];
cx q[0],q[2];
cz q[1],q[4];
y q[1];
crz(2.8539134) q[0],q[2];
ry(1.1628936) q[4];
s q[3];
h q[0];
cu3(4.0403528,3.8947908,0.10294524) q[1],q[3];
crz(5.1440634) q[4],q[2];
crz(5.7035869) q[2],q[0];
ch q[4],q[1];
id q[3];
ch q[0],q[4];
cswap q[1],q[3],q[2];
ccx q[1],q[0],q[3];
crz(2.2466397) q[2],q[4];
sdg q[1];
cu3(1.7391385,5.8289225,3.847641) q[2],q[3];
cu3(5.5298713,3.915533,4.1434406) q[4],q[0];
t q[0];
u2(2.1156056,0.93171752) q[3];
cx q[1],q[4];
tdg q[2];
x q[3];
ccx q[2],q[1],q[4];
rz(4.1192036) q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[5];
cu3(2.7707423,0.4801106,0.97070011) q[0],q[4];
cy q[1],q[2];
t q[3];
cz q[0],q[4];
ch q[3],q[2];
u3(1.8159018,3.6253521,0.67922219) q[1];
cy q[2],q[1];
rx(0.34256554) q[3];
u1(4.0704843) q[0];
y q[4];
z q[1];
x q[2];
ccx q[4],q[3],q[0];
ccx q[2],q[1],q[3];
rx(3.6031505) q[4];
ry(3.1507547) q[0];
cswap q[4],q[0],q[3];
u3(1.0559748,2.5426636,5.2931531) q[2];
s q[1];
ccx q[3],q[2],q[0];
h q[4];
x q[1];
z q[4];
cz q[3],q[0];
y q[2];
rx(3.789733) q[1];
h q[0];
cswap q[2],q[4],q[3];
ry(5.0206962) q[1];
ccx q[4],q[2],q[3];
swap q[1],q[0];
cu1(3.9705362) q[0],q[2];
cu1(0.46559893) q[1],q[3];
h q[4];
cy q[3],q[4];
ccx q[1],q[2],q[0];
cu1(6.0494975) q[2],q[1];
cswap q[4],q[3],q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
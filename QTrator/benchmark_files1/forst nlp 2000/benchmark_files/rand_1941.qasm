OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg c[4];
ccx q[3],q[2],q[0];
ry(0.62428831) q[1];
cy q[1],q[2];
rz(1.6197152) q[0];
tdg q[3];
cswap q[1],q[0],q[3];
ry(1.2750665) q[2];
rz(5.7679316) q[0];
cswap q[2],q[3],q[1];
ccx q[1],q[3],q[0];
u1(5.7690094) q[2];
ccx q[3],q[1],q[2];
z q[0];
cswap q[1],q[0],q[3];
h q[2];
swap q[1],q[0];
cz q[3],q[2];
s q[3];
ch q[0],q[1];
u1(5.6845611) q[2];
swap q[0],q[3];
sdg q[1];
u2(4.8469954,5.7623854) q[2];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];

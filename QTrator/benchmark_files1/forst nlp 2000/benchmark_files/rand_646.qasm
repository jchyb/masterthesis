OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
creg c[6];
cswap q[1],q[5],q[2];
ccx q[0],q[4],q[3];
ch q[1],q[4];
cswap q[3],q[2],q[0];
sdg q[5];
s q[5];
x q[4];
cswap q[0],q[1],q[3];
ry(6.0738446) q[2];
s q[5];
cu3(2.1144949,0.68440562,3.826418) q[2],q[1];
cswap q[3],q[0],q[4];
cy q[3],q[1];
s q[5];
ccx q[2],q[4],q[0];
t q[0];
u1(2.374705) q[3];
rz(6.1627091) q[1];
cz q[5],q[4];
ry(0.10880925) q[2];
u1(2.3256118) q[0];
ry(3.2241027) q[3];
t q[5];
u3(2.7248963,2.7345161,0.86537504) q[1];
cy q[4],q[2];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
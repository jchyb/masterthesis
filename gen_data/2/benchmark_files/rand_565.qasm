OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
swap q[0],q[9];
sdg q[6];
ccx q[5],q[1],q[3];
crz(0.74947023) q[7],q[2];
u2(2.5335557,1.3386479) q[8];
ry(0.57321286) q[4];
rz(2.0357172) q[3];
cswap q[9],q[2],q[6];
tdg q[8];
u2(0.49920095,6.2398752) q[1];
cu3(0.79686398,2.7790807,5.0247553) q[7],q[4];
u3(4.7670732,2.2198447,1.9296454) q[5];
ry(1.5857621) q[0];
id q[7];
ccx q[9],q[5],q[6];
cswap q[8],q[2],q[0];
rz(2.8375949) q[1];
t q[3];
sdg q[4];
cswap q[6],q[3],q[8];
cswap q[2],q[7],q[0];
cswap q[5],q[9],q[4];
tdg q[1];
ccx q[4],q[7],q[6];
y q[9];
u3(4.998193,0.30872913,3.0014519) q[0];
cswap q[3],q[5],q[2];
ch q[8],q[1];
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
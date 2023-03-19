OPENQASM 2.0;
include "qelib1.inc";
qreg q[13];
creg c[13];
cu1(5.8302125) q[2],q[12];
swap q[11],q[10];
sdg q[1];
u2(1.0309415,5.1946476) q[4];
s q[8];
t q[0];
ry(5.8152502) q[9];
cu1(2.8966038) q[5],q[3];
ry(2.9753135) q[6];
u2(2.114994,3.8160361) q[7];
cy q[8],q[11];
cswap q[3],q[2],q[1];
cx q[7],q[12];
cswap q[5],q[10],q[6];
sdg q[0];
cu1(1.3055561) q[4],q[9];
ccx q[6],q[3],q[12];
cswap q[10],q[1],q[0];
cx q[9],q[5];
z q[7];
u2(0.61410009,3.1942025) q[11];
id q[4];
rzz(0.84681595) q[2],q[8];
s q[6];
u2(2.5951577,0.92048861) q[11];
cu1(2.5527909) q[3],q[10];
cswap q[2],q[0],q[5];
cswap q[12],q[7],q[8];
cu1(3.5754302) q[1],q[9];
z q[4];
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
measure q[10] -> c[10];
measure q[11] -> c[11];
measure q[12] -> c[12];

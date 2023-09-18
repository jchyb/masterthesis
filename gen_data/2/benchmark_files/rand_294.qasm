OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
u3(0.3777605,5.7767283,5.2878662) q[2];
ch q[1],q[8];
cswap q[9],q[7],q[3];
cu3(3.3217595,5.8708255,1.0303025) q[4],q[6];
ch q[5],q[0];
cz q[6],q[5];
cswap q[9],q[0],q[8];
sdg q[4];
cu3(2.3675226,0.86221234,6.0638402) q[1],q[3];
cy q[2],q[7];
swap q[2],q[3];
rz(0.24669196) q[4];
ccx q[7],q[5],q[6];
cu3(2.3749091,5.0311923,1.0435191) q[0],q[8];
cy q[9],q[1];
ccx q[2],q[1],q[8];
ccx q[3],q[0],q[6];
ccx q[9],q[7],q[4];
sdg q[5];
cswap q[3],q[6],q[7];
cswap q[0],q[4],q[8];
cy q[9],q[1];
cy q[5],q[2];
sdg q[9];
ch q[0],q[3];
ccx q[1],q[7],q[4];
ccx q[6],q[8],q[2];
x q[5];
x q[5];
ch q[3],q[6];
u2(0.25139804,5.0833294) q[7];
ccx q[9],q[1],q[0];
u1(4.9098375) q[8];
crz(0.18167546) q[2],q[4];
cswap q[0],q[4],q[3];
u2(3.3719152,0.64883294) q[1];
ccx q[8],q[9],q[7];
rzz(2.6168874) q[5],q[2];
ry(6.2414808) q[6];
cu3(1.3802773,2.464959,0.098446021) q[8],q[0];
rz(1.5611211) q[9];
ccx q[5],q[3],q[2];
ch q[7],q[4];
swap q[6],q[1];
u1(4.6500098) q[2];
cu1(0.98462772) q[1],q[4];
ch q[3],q[9];
s q[7];
cz q[6],q[0];
ch q[8],q[5];
ccx q[3],q[6],q[9];
x q[5];
ry(4.936951) q[1];
s q[0];
ch q[8],q[4];
cu3(1.7124902,4.2384627,5.992715) q[2],q[7];
ccx q[1],q[9],q[2];
cy q[8],q[3];
ccx q[0],q[6],q[7];
cu1(4.1392471) q[4],q[5];
cu1(4.0447968) q[1],q[6];
u3(5.4917561,0.61116527,2.1162314) q[5];
cswap q[0],q[7],q[2];
ccx q[3],q[4],q[9];
h q[8];
ccx q[4],q[8],q[2];
u2(1.4303646,3.5841674) q[5];
cswap q[6],q[0],q[1];
ccx q[9],q[3],q[7];
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
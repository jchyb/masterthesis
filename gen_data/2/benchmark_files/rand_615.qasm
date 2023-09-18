OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
h q[6];
h q[3];
cswap q[7],q[4],q[5];
s q[1];
cy q[9],q[2];
cu3(4.3699538,0.46738754,1.0823246) q[8],q[0];
cu3(5.1611141,5.9357372,0.6224022) q[9],q[7];
cx q[2],q[1];
t q[6];
swap q[0],q[4];
ry(4.1273561) q[5];
cu1(5.0524551) q[8],q[3];
rzz(2.0505678) q[7],q[5];
cy q[9],q[3];
cswap q[6],q[2],q[0];
x q[8];
tdg q[1];
x q[4];
ccx q[9],q[2],q[6];
swap q[1],q[3];
u3(5.7964226,6.0091366,2.6558258) q[7];
cz q[0],q[5];
cy q[4],q[8];
cu3(2.5726262,5.8176026,3.9133347) q[0],q[6];
crz(2.9642048) q[1],q[9];
cz q[2],q[7];
ccx q[8],q[5],q[3];
id q[4];
y q[9];
swap q[3],q[8];
cu3(4.3858406,0.42530403,4.9529771) q[7],q[2];
ccx q[1],q[4],q[0];
cy q[6],q[5];
cu1(2.3661889) q[6],q[5];
cy q[8],q[0];
cswap q[1],q[7],q[4];
cz q[9],q[2];
sdg q[3];
cx q[7],q[3];
ccx q[9],q[8],q[0];
cz q[1],q[2];
ccx q[6],q[5],q[4];
cy q[1],q[5];
u1(1.5712503) q[4];
cx q[3],q[0];
ccx q[2],q[7],q[6];
ry(4.8038874) q[8];
z q[9];
ry(1.718138) q[1];
cy q[9],q[8];
cswap q[2],q[6],q[0];
z q[4];
sdg q[7];
cu3(5.4357124,1.4488185,3.1681872) q[3],q[5];
t q[3];
cswap q[5],q[9],q[2];
id q[4];
id q[0];
tdg q[6];
ccx q[8],q[7],q[1];
ry(1.9920789) q[4];
cswap q[1],q[3],q[5];
crz(0.9046339) q[0],q[8];
ccx q[2],q[9],q[6];
y q[7];
ccx q[5],q[2],q[1];
ccx q[6],q[8],q[0];
cswap q[4],q[3],q[7];
t q[9];
cswap q[5],q[4],q[1];
sdg q[0];
cy q[2],q[3];
swap q[6],q[7];
swap q[8],q[9];
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
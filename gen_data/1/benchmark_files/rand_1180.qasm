OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
crz(3.0367958) q[0],q[9];
cswap q[4],q[6],q[2];
ccx q[3],q[1],q[5];
id q[7];
id q[8];
cu1(0.38751805) q[1],q[0];
y q[3];
h q[6];
cz q[2],q[9];
cy q[7],q[5];
cx q[4],q[8];
rz(4.0096965) q[4];
ccx q[5],q[7],q[8];
ry(1.2636429) q[1];
s q[6];
ch q[9],q[2];
id q[3];
id q[0];
cz q[5],q[3];
s q[9];
cu3(3.4358868,2.447982,5.0850885) q[8],q[6];
cswap q[0],q[4],q[1];
u1(6.1605623) q[7];
x q[2];
u2(5.7386532,2.2758831) q[1];
cu3(0.63946009,4.9333832,5.323835) q[0],q[5];
ccx q[9],q[4],q[6];
swap q[3],q[8];
cz q[2],q[7];
s q[4];
cz q[2],q[1];
ccx q[6],q[5],q[7];
cswap q[3],q[0],q[8];
ry(1.9349398) q[9];
y q[8];
cy q[2],q[9];
ch q[1],q[0];
u3(4.3174602,1.9799848,3.4675134) q[6];
cswap q[5],q[4],q[3];
ry(5.3828977) q[7];
ccx q[2],q[4],q[7];
rzz(1.6737582) q[6],q[9];
ch q[5],q[8];
cswap q[1],q[0],q[3];
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
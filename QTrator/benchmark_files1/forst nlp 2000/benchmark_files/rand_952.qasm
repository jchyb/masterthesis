OPENQASM 2.0;
include "qelib1.inc";
qreg q[12];
creg c[12];
u1(0.82610417) q[5];
cx q[9],q[11];
cswap q[8],q[0],q[2];
y q[4];
ccx q[3],q[7],q[1];
rx(0.054644805) q[6];
u2(1.3287247,0.22718706) q[10];
ccx q[4],q[11],q[5];
cswap q[9],q[7],q[0];
u1(1.9286537) q[2];
id q[8];
cx q[10],q[6];
u3(1.7844458,2.8939339,3.5704851) q[3];
id q[1];
ccx q[8],q[9],q[5];
cx q[0],q[7];
ccx q[6],q[2],q[11];
cswap q[4],q[3],q[1];
z q[10];
h q[0];
cx q[10],q[2];
ccx q[11],q[8],q[6];
cswap q[5],q[9],q[1];
cswap q[7],q[4],q[3];
ry(3.3161967) q[9];
sdg q[1];
ccx q[3],q[6],q[8];
rz(0.54465964) q[5];
swap q[0],q[11];
cswap q[4],q[10],q[7];
y q[2];
ccx q[3],q[5],q[4];
y q[0];
ccx q[11],q[8],q[2];
swap q[9],q[10];
rx(6.1749526) q[1];
x q[7];
rz(3.4469312) q[6];
cx q[1],q[5];
y q[8];
t q[2];
sdg q[11];
cu3(0.035629774,0.34590432,0.13245065) q[9],q[4];
u3(5.8704346,6.2263642,4.8063907) q[0];
tdg q[3];
ch q[10],q[7];
rz(5.4743767) q[6];
u2(2.4964873,5.0783444) q[5];
cz q[6],q[10];
rzz(0.19501412) q[2],q[3];
z q[8];
y q[9];
cu1(4.4091026) q[0],q[7];
cswap q[11],q[4],q[1];
ccx q[10],q[7],q[4];
cswap q[3],q[6],q[1];
s q[11];
u2(5.5609215,5.7892534) q[5];
rzz(4.261358) q[9],q[2];
z q[0];
ry(5.9940057) q[8];
ccx q[10],q[0],q[5];
tdg q[11];
cswap q[9],q[7],q[1];
rzz(2.7947562) q[4],q[8];
sdg q[2];
rx(2.1489922) q[6];
rz(2.4126991) q[3];
ccx q[3],q[10],q[6];
crz(0.2837354) q[1],q[4];
h q[2];
rzz(0.75770906) q[11],q[9];
s q[5];
ccx q[8],q[0],q[7];
cu3(0.62089694,0.61078427,1.7934052) q[9],q[8];
rx(5.7196874) q[2];
cswap q[1],q[4],q[10];
crz(2.6919597) q[0],q[7];
ch q[6],q[11];
cz q[5],q[3];
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

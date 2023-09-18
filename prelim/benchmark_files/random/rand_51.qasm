OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[9],q[4],q[5];
ccx q[2],q[3],q[0];
cswap q[1],q[6],q[7];
rz(4.2691156) q[8];
rzz(2.7541675) q[8],q[3];
cx q[2],q[1];
cz q[9],q[0];
h q[5];
z q[4];
cy q[7],q[6];
h q[8];
cu1(1.7586263) q[5],q[4];
cz q[2],q[0];
cx q[3],q[1];
cu1(1.8429508) q[7],q[6];
s q[9];
crz(2.658775) q[3],q[2];
ry(3.6861508) q[5];
cu3(3.1438696,3.319493,1.4351461) q[7],q[6];
rz(0.37617597) q[4];
cswap q[0],q[8],q[9];
u3(1.1760234,4.1457706,1.8635393) q[1];
t q[8];
cu3(5.221583,2.2160062,3.2175124) q[7],q[4];
rx(2.7770619) q[6];
ccx q[2],q[0],q[5];
cswap q[3],q[1],q[9];
y q[5];
ccx q[6],q[2],q[8];
y q[0];
ccx q[1],q[4],q[7];
s q[9];
s q[3];
s q[0];
rzz(5.894578) q[5],q[1];
ccx q[3],q[8],q[4];
cswap q[9],q[7],q[6];
y q[2];
h q[4];
rzz(2.3800769) q[1],q[7];
cswap q[8],q[0],q[2];
ccx q[6],q[9],q[5];
z q[3];
t q[0];
ccx q[4],q[3],q[2];
ch q[9],q[8];
cswap q[5],q[7],q[1];
s q[6];
crz(3.9905743) q[2],q[8];
ccx q[6],q[3],q[9];
u3(2.3525679,1.2921718,3.3570661) q[1];
rzz(0.50304686) q[4],q[0];
id q[7];
u1(0.56926474) q[5];
rzz(3.5152097) q[5],q[9];
swap q[8],q[1];
sdg q[3];
u2(2.1780779,4.3687588) q[2];
crz(1.6172389) q[4],q[6];
u2(1.7926949,1.1326592) q[0];
x q[7];
cswap q[8],q[1],q[5];
cswap q[6],q[0],q[2];
rx(6.0550259) q[3];
crz(2.7232247) q[9],q[4];
u2(0.51646942,5.971662) q[7];
rzz(6.2362608) q[5],q[3];
ccx q[0],q[2],q[9];
cswap q[8],q[1],q[7];
u1(5.0801003) q[6];
u2(5.9553629,1.9294645) q[4];
cx q[2],q[8];
cu3(3.0394259,2.0827381,1.479192) q[9],q[5];
s q[4];
ccx q[0],q[6],q[3];
tdg q[1];
z q[7];
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
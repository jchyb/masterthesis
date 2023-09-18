OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
sdg q[7];
crz(1.5674207) q[0],q[2];
u2(1.1309189,1.3926426) q[5];
cswap q[1],q[8],q[4];
ry(1.7122494) q[6];
cu1(2.2504314) q[3],q[9];
u2(0.074884915,3.6036467) q[4];
cswap q[3],q[7],q[8];
t q[9];
cx q[0],q[6];
rzz(3.9093637) q[1],q[5];
x q[2];
cswap q[2],q[8],q[0];
rx(5.986233) q[6];
h q[3];
swap q[9],q[1];
cu3(2.4503705,5.9036369,3.7802092) q[4],q[5];
x q[7];
ccx q[2],q[6],q[5];
u2(0.21747783,4.3603166) q[0];
sdg q[4];
cz q[3],q[8];
cu1(1.966412) q[1],q[7];
rx(3.6963837) q[9];
ccx q[3],q[0],q[2];
ccx q[9],q[5],q[4];
x q[1];
ry(4.0821623) q[6];
y q[7];
s q[8];
cy q[2],q[6];
id q[7];
tdg q[5];
y q[1];
t q[3];
cswap q[4],q[8],q[9];
y q[0];
cz q[4],q[6];
rx(6.0913403) q[5];
h q[1];
rx(3.1784318) q[7];
rx(4.9309423) q[9];
cswap q[8],q[0],q[2];
id q[3];
cu3(5.5905128,3.1418362,3.4254852) q[8],q[5];
ccx q[2],q[0],q[4];
ccx q[7],q[9],q[3];
swap q[1],q[6];
ccx q[3],q[7],q[1];
sdg q[5];
cy q[4],q[9];
cz q[6],q[0];
cz q[2],q[8];
u1(5.1592948) q[4];
rzz(3.9958482) q[9],q[2];
cswap q[8],q[1],q[7];
cu1(3.523158) q[5],q[3];
cz q[0],q[6];
ccx q[2],q[3],q[5];
rzz(3.3292109) q[1],q[6];
cu3(0.87695195,3.2136388,0.86786062) q[8],q[4];
cswap q[0],q[9],q[7];
rzz(1.5179226) q[0],q[5];
ccx q[8],q[9],q[6];
cswap q[3],q[7],q[2];
cu1(4.8910467) q[1],q[4];
rzz(3.8309473) q[7],q[0];
ccx q[8],q[5],q[3];
swap q[2],q[6];
ccx q[9],q[4],q[1];
cu3(0.37349549,2.6104275,4.7892829) q[5],q[4];
cu1(0.54073575) q[6],q[3];
cswap q[8],q[0],q[7];
ccx q[2],q[1],q[9];
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
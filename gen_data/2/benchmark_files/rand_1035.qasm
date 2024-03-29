OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
z q[1];
ccx q[7],q[4],q[8];
u3(4.0918837,3.8553038,3.5404927) q[2];
cz q[6],q[3];
cswap q[9],q[5],q[0];
rz(0.64999554) q[0];
cz q[4],q[6];
t q[3];
u2(2.8665112,5.1502954) q[7];
t q[9];
crz(6.1700592) q[2],q[1];
u1(3.4934875) q[5];
rx(2.1911085) q[8];
ccx q[0],q[7],q[9];
cx q[6],q[1];
sdg q[8];
z q[2];
u2(4.4300149,0.79650853) q[5];
ry(0.00068988429) q[3];
u1(4.9945045) q[4];
cswap q[8],q[7],q[4];
h q[0];
h q[6];
z q[3];
cswap q[1],q[2],q[5];
ry(0.51895177) q[9];
rz(0.36259212) q[7];
sdg q[1];
cu3(5.4333861,6.058413,4.2150689) q[5],q[8];
cswap q[0],q[6],q[2];
cu1(2.2795977) q[3],q[4];
ry(3.850916) q[9];
cswap q[1],q[8],q[9];
cz q[7],q[3];
ccx q[4],q[5],q[0];
cu1(4.884067) q[6],q[2];
cswap q[3],q[2],q[9];
sdg q[1];
z q[6];
cu1(4.1144087) q[0],q[4];
u3(4.2922801,1.3775361,3.3320059) q[8];
cz q[7],q[5];
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

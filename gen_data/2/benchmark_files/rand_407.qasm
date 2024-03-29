OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
u3(4.2199692,0.18709266,2.5709014) q[2];
ccx q[4],q[7],q[9];
rz(1.1867508) q[1];
cswap q[5],q[0],q[8];
crz(4.3663087) q[6],q[3];
ccx q[4],q[6],q[3];
ccx q[7],q[8],q[2];
s q[1];
z q[0];
u3(3.7581433,2.1052296,1.4038125) q[5];
id q[9];
cswap q[6],q[4],q[9];
cu1(0.19441788) q[7],q[0];
cswap q[1],q[2],q[5];
s q[3];
u2(3.1690112,1.998484) q[8];
cswap q[6],q[7],q[0];
ry(1.8428529) q[3];
id q[1];
ry(5.4006627) q[2];
crz(2.4099698) q[4],q[9];
cz q[8],q[5];
ccx q[2],q[3],q[8];
s q[0];
ccx q[4],q[6],q[5];
y q[1];
crz(5.1781588) q[7],q[9];
s q[1];
cswap q[5],q[7],q[6];
crz(4.9007665) q[9],q[0];
cswap q[2],q[8],q[3];
ry(2.1557155) q[4];
ch q[4],q[8];
ccx q[5],q[3],q[7];
ry(4.3561389) q[9];
h q[2];
t q[6];
swap q[0],q[1];
cy q[7],q[0];
ch q[5],q[2];
cx q[9],q[8];
cy q[1],q[6];
cu1(3.6396647) q[4],q[3];
cz q[4],q[3];
u2(6.1529963,0.48997173) q[8];
ccx q[7],q[2],q[0];
swap q[5],q[1];
y q[9];
id q[6];
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

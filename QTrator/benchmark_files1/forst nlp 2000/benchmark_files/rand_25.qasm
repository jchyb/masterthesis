OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[3],q[2],q[1];
ccx q[8],q[6],q[5];
cx q[0],q[7];
id q[4];
sdg q[9];
ch q[4],q[3];
sdg q[0];
cswap q[2],q[1],q[7];
crz(5.2424605) q[6],q[9];
crz(3.2739936) q[8],q[5];
ccx q[5],q[0],q[2];
ch q[4],q[3];
rz(2.1012848) q[9];
cswap q[1],q[7],q[6];
rz(5.4178209) q[8];
cz q[4],q[1];
cu1(2.8415367) q[2],q[9];
cx q[8],q[3];
cswap q[0],q[6],q[5];
y q[7];
t q[5];
u2(4.5317325,0.01456746) q[9];
cy q[2],q[6];
cu3(1.142662,5.3823004,4.2835162) q[0],q[1];
id q[3];
ccx q[7],q[8],q[4];
u1(4.2587933) q[8];
u3(3.2265442,3.530908,2.1261541) q[5];
cz q[0],q[6];
ccx q[1],q[2],q[7];
cx q[3],q[9];
h q[4];
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
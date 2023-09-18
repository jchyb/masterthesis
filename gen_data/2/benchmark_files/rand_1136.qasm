OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[7],q[3],q[6];
swap q[2],q[1];
ch q[5],q[8];
cswap q[0],q[9],q[4];
tdg q[1];
cswap q[0],q[6],q[4];
ccx q[5],q[2],q[3];
cu1(6.1403274) q[7],q[8];
h q[9];
cx q[6],q[0];
ccx q[9],q[4],q[8];
cswap q[7],q[3],q[5];
cz q[1],q[2];
cx q[7],q[9];
s q[0];
cx q[2],q[6];
t q[8];
ccx q[4],q[3],q[5];
z q[1];
cx q[4],q[0];
cu3(3.63637,1.394829,4.6652449) q[2],q[9];
cswap q[3],q[8],q[5];
ccx q[7],q[1],q[6];
t q[9];
cx q[5],q[4];
cz q[1],q[7];
ry(1.2484467) q[0];
ch q[6],q[8];
z q[3];
rx(4.764967) q[2];
cy q[7],q[4];
swap q[5],q[3];
cz q[6],q[2];
ccx q[0],q[1],q[9];
tdg q[8];
cswap q[8],q[3],q[5];
x q[1];
ccx q[7],q[0],q[2];
x q[9];
h q[6];
s q[4];
ccx q[7],q[0],q[1];
cz q[9],q[8];
cswap q[5],q[6],q[4];
u3(5.176932,3.4578178,1.610466) q[2];
x q[3];
ccx q[9],q[5],q[0];
ry(5.9474085) q[2];
u2(0.032458896,3.3778834) q[4];
swap q[1],q[3];
cy q[8],q[7];
u3(3.2640352,2.6223369,2.7964766) q[6];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cx q[4],q[6];
ccx q[9],q[1],q[0];
cu1(0.15879649) q[2],q[5];
cswap q[7],q[8],q[3];
t q[8];
z q[5];
ccx q[6],q[2],q[3];
cswap q[7],q[1],q[4];
s q[9];
x q[0];
cswap q[3],q[1],q[9];
u1(1.4414119) q[4];
cswap q[6],q[2],q[7];
ccx q[0],q[5],q[8];
ccx q[3],q[4],q[8];
cu3(1.6482754,4.2191021,2.8069504) q[7],q[5];
cswap q[0],q[2],q[1];
tdg q[9];
tdg q[6];
ch q[8],q[5];
ry(2.841709) q[7];
cz q[0],q[3];
ccx q[6],q[9],q[1];
s q[4];
ry(2.6204161) q[2];
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
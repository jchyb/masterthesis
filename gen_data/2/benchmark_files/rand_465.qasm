OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
u2(1.9579926,1.379116) q[1];
cswap q[6],q[2],q[8];
swap q[7],q[0];
rzz(5.1756048) q[5],q[4];
cx q[3],q[9];
ccx q[6],q[9],q[7];
ccx q[3],q[4],q[8];
cswap q[0],q[1],q[2];
ry(1.1771252) q[5];
cswap q[9],q[8],q[5];
t q[1];
cx q[2],q[7];
crz(5.08711) q[4],q[0];
cz q[6],q[3];
cz q[0],q[8];
cswap q[4],q[6],q[9];
rz(5.6107118) q[1];
u2(6.2556676,5.1491924) q[5];
cswap q[7],q[2],q[3];
u2(0.2819023,0.33646883) q[9];
u2(2.0208491,0.91375385) q[8];
cz q[6],q[5];
u2(2.6427391,6.2665246) q[1];
cswap q[3],q[0],q[2];
y q[7];
ry(3.7564445) q[4];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[0],q[5],q[3];
u2(4.0912405,5.6569698) q[6];
u1(4.5241308) q[9];
ccx q[8],q[1],q[2];
cx q[7],q[4];
ccx q[5],q[1],q[7];
cu3(2.6301962,4.7740638,6.2355564) q[4],q[2];
ccx q[9],q[0],q[6];
u1(3.3309437) q[3];
rx(2.3989632) q[8];
cswap q[6],q[9],q[0];
id q[2];
cz q[3],q[7];
cswap q[4],q[5],q[1];
t q[8];
u1(4.6699995) q[8];
cswap q[1],q[9],q[2];
u2(1.7643305,4.5116793) q[5];
cswap q[3],q[7],q[0];
cu1(0.87684779) q[6],q[4];
z q[9];
ccx q[1],q[6],q[8];
ccx q[3],q[7],q[0];
ccx q[2],q[5],q[4];
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
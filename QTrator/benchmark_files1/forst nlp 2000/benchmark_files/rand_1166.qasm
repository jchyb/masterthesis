OPENQASM 2.0;
include "qelib1.inc";
qreg q[13];
creg c[13];
t q[12];
rz(5.7746555) q[4];
id q[1];
rzz(3.3261213) q[8],q[5];
ccx q[3],q[7],q[10];
swap q[2],q[9];
cswap q[6],q[0],q[11];
ccx q[8],q[6],q[4];
ccx q[9],q[11],q[7];
cz q[3],q[2];
ccx q[1],q[12],q[0];
id q[10];
x q[5];
ccx q[7],q[2],q[3];
rz(4.2736152) q[9];
u1(0.95749435) q[12];
cu3(4.8485852,4.842979,3.7422219) q[0],q[6];
ch q[8],q[5];
ccx q[11],q[10],q[1];
s q[4];
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
measure q[12] -> c[12];
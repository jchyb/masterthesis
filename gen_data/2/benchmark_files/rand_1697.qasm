OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[6],q[2],q[4];
swap q[7],q[3];
cx q[5],q[9];
ccx q[0],q[1],q[8];
u3(1.0033968,0.076902512,3.8114912) q[4];
ccx q[7],q[1],q[2];
cu1(0.66872013) q[8],q[6];
ccx q[0],q[9],q[3];
t q[5];
cz q[8],q[9];
rx(5.7671053) q[2];
ccx q[7],q[1],q[6];
cz q[5],q[4];
cu3(0.07278926,1.0994424,3.2914506) q[3],q[0];
cswap q[8],q[2],q[0];
swap q[7],q[9];
cu1(5.1069223) q[3],q[4];
cswap q[1],q[6],q[5];
cz q[6],q[4];
cz q[0],q[3];
ccx q[7],q[1],q[9];
cswap q[2],q[8],q[5];
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
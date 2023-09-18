OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[0],q[4],q[5];
y q[9];
rz(4.9090053) q[8];
ccx q[3],q[6],q[1];
cu3(3.0460126,3.1985449,1.9203068) q[2],q[7];
cswap q[8],q[0],q[2];
z q[5];
y q[4];
ccx q[6],q[3],q[1];
ch q[7],q[9];
cu3(0.59126534,4.230744,4.800919) q[9],q[5];
ch q[8],q[6];
cswap q[7],q[3],q[4];
rz(4.2298722) q[2];
cx q[1],q[0];
crz(3.2286637) q[4],q[1];
tdg q[2];
x q[5];
z q[6];
s q[0];
cswap q[9],q[7],q[3];
h q[8];
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
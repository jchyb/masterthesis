OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cz q[1],q[4];
cswap q[8],q[2],q[9];
u1(4.1292189) q[6];
ch q[3],q[5];
rz(5.0005157) q[0];
h q[7];
s q[6];
s q[5];
id q[8];
cu3(3.8122253,1.4324413,3.7401513) q[0],q[1];
cz q[2],q[9];
cu1(0.92664519) q[4],q[3];
sdg q[7];
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
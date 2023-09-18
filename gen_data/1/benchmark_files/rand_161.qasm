OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cz q[1],q[8];
ccx q[9],q[0],q[6];
rx(0.35628192) q[2];
ccx q[5],q[7],q[4];
y q[3];
cswap q[1],q[4],q[5];
u2(3.1066048,5.0973249) q[9];
ry(5.5955211) q[6];
u2(4.4955998,1.3084375) q[3];
cswap q[2],q[7],q[8];
rx(1.4463833) q[0];
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
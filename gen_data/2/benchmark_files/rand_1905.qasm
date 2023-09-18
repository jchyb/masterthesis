OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[0],q[5],q[1];
cx q[4],q[9];
crz(3.5955211) q[3],q[2];
cu3(0.12807403,2.7180838,2.8548369) q[8],q[6];
u2(0.14591174,1.8026342) q[7];
cswap q[2],q[7],q[9];
cu3(5.4362554,2.0370612,6.0752556) q[3],q[5];
cx q[6],q[0];
cswap q[1],q[8],q[4];
cswap q[5],q[0],q[2];
cu3(2.5247281,2.3371531,6.1039928) q[8],q[4];
swap q[9],q[1];
rx(3.6508839) q[3];
cy q[6],q[7];
ccx q[0],q[1],q[7];
ry(2.3275983) q[2];
ch q[3],q[8];
cswap q[4],q[6],q[5];
z q[9];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
creg c[6];
ccx q[3],q[4],q[2];
z q[1];
h q[0];
y q[5];
y q[2];
ch q[1],q[3];
rzz(0.67330057) q[0],q[5];
u2(4.6662425,0.73279187) q[4];
cswap q[5],q[0],q[3];
cx q[1],q[4];
u3(1.6181607,6.2271302,4.3613838) q[2];
cswap q[0],q[2],q[1];
id q[5];
crz(3.0833691) q[4],q[3];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
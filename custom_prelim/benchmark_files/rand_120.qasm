OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
tdg q[8];
rx(4.0210346) q[3];
cu1(5.31415) q[7],q[4];
cswap q[9],q[1],q[6];
ccx q[5],q[0],q[2];
rzz(2.7163458) q[4],q[0];
ry(0.64235645) q[1];
u1(4.0494081) q[8];
u2(5.4485329,0.31126207) q[3];
cu1(2.8116403) q[9],q[7];
ch q[5],q[6];
id q[2];
u2(6.0011853,1.2959884) q[6];
cy q[1],q[5];
ccx q[9],q[7],q[0];
rx(0.83647395) q[3];
h q[8];
z q[2];
ry(1.7991229) q[4];
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
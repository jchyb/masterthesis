OPENQASM 2.0;
include "qelib1.inc";
qreg q[13];
creg c[13];
crz(1.5259603) q[5],q[7];
rzz(3.0644684) q[9],q[2];
y q[8];
cy q[10],q[4];
ccx q[6],q[12],q[3];
ry(6.0781391) q[1];
cx q[0],q[11];
crz(3.9162797) q[8],q[11];
rx(2.7493793) q[5];
cswap q[3],q[2],q[10];
tdg q[4];
cz q[1],q[0];
cu1(0.39195981) q[12],q[7];
cy q[9],q[6];
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
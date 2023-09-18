OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[3],q[0],q[9];
cy q[6],q[1];
cu1(2.9448938) q[8],q[7];
s q[4];
crz(4.4761079) q[2],q[5];
ccx q[1],q[5],q[4];
ry(2.3808428) q[7];
y q[9];
cz q[3],q[6];
rz(1.829077) q[0];
rz(3.2939442) q[8];
y q[2];
ccx q[1],q[8],q[9];
x q[6];
cswap q[3],q[0],q[4];
cu1(3.642317) q[2],q[5];
tdg q[7];
x q[1];
x q[8];
swap q[9],q[5];
cswap q[0],q[6],q[3];
ccx q[2],q[7],q[4];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ry(4.3026618) q[4];
u1(4.9334222) q[2];
swap q[8],q[7];
cu1(2.7203437) q[3],q[0];
ccx q[5],q[1],q[6];
s q[9];
cswap q[7],q[3],q[8];
cu3(2.0172297,6.1796665,5.075018) q[9],q[2];
rzz(1.1489518) q[1],q[0];
cy q[6],q[5];
ry(2.3287374) q[4];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[9];
creg c[9];
rzz(1.9529023) q[6],q[1];
ccx q[7],q[4],q[2];
y q[8];
ccx q[5],q[3],q[0];
cswap q[8],q[1],q[5];
swap q[2],q[4];
ry(1.9312577) q[3];
cu3(4.6113331,2.5247193,4.322648) q[6],q[7];
z q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];
measure q[8] -> c[8];

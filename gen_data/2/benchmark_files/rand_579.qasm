OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cz q[5],q[0];
cswap q[9],q[7],q[8];
t q[6];
ccx q[2],q[4],q[1];
u3(2.2498432,2.6308092,1.0593255) q[3];
ry(1.2886057) q[4];
swap q[3],q[7];
ccx q[9],q[5],q[2];
ccx q[0],q[1],q[8];
rx(6.2277609) q[6];
cswap q[5],q[2],q[1];
cswap q[9],q[8],q[6];
cu1(5.2693741) q[4],q[3];
rx(3.4802771) q[7];
h q[0];
rzz(2.7619299) q[2],q[3];
ry(5.3764358) q[1];
cx q[9],q[5];
cswap q[0],q[4],q[8];
cu1(0.063163296) q[6],q[7];
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
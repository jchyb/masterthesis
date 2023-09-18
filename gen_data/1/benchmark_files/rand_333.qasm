OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
x q[3];
cswap q[0],q[2],q[4];
cx q[6],q[5];
cx q[7],q[1];
cy q[9],q[8];
s q[3];
cswap q[6],q[7],q[1];
cu3(1.6035071,3.2085859,5.6059042) q[8],q[0];
cz q[4],q[5];
rzz(6.2142894) q[9],q[2];
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
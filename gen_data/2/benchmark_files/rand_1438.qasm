OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
t q[8];
id q[0];
cswap q[2],q[7],q[4];
cu1(4.3960278) q[6],q[3];
cswap q[5],q[9],q[1];
cu3(0.049531442,3.7140921,6.0187936) q[6],q[7];
cswap q[2],q[3],q[5];
z q[0];
ch q[9],q[4];
t q[1];
x q[8];
x q[7];
h q[2];
rzz(1.3160723) q[8],q[1];
cswap q[0],q[3],q[6];
cswap q[5],q[9],q[4];
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
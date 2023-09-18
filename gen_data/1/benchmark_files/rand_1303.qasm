OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cu1(5.3034297) q[9],q[0];
ccx q[5],q[4],q[3];
ccx q[1],q[6],q[7];
cz q[2],q[8];
cz q[1],q[6];
cx q[5],q[3];
cu3(2.7184741,4.9971553,1.7139757) q[7],q[2];
u3(2.6974247,4.27288,3.3943043) q[9];
ry(5.882684) q[0];
swap q[4],q[8];
cswap q[2],q[7],q[1];
t q[8];
rzz(2.888602) q[9],q[5];
ry(2.044567) q[3];
cswap q[4],q[6],q[0];
ry(5.3939614) q[9];
ch q[8],q[4];
crz(3.2813767) q[3],q[6];
swap q[5],q[2];
cswap q[7],q[0],q[1];
cy q[4],q[3];
cswap q[8],q[9],q[0];
h q[2];
cz q[1],q[6];
u3(5.1664043,3.0284315,5.7879666) q[5];
u3(1.1871072,5.4806445,4.802993) q[7];
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
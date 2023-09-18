OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[4],q[6],q[2];
cu3(5.1293154,5.2199873,0.92012618) q[5],q[8];
cu1(0.22601413) q[9],q[7];
u2(1.3602613,1.9891109) q[0];
y q[1];
ry(4.402254) q[3];
id q[4];
x q[2];
ccx q[1],q[0],q[6];
h q[9];
ccx q[3],q[5],q[8];
s q[7];
cx q[1],q[4];
tdg q[7];
cswap q[9],q[3],q[8];
cswap q[6],q[0],q[5];
z q[2];
id q[5];
crz(3.8514602) q[6],q[7];
s q[1];
z q[8];
cz q[0],q[3];
ch q[2],q[4];
s q[9];
sdg q[2];
crz(5.0142703) q[8],q[3];
cy q[7],q[1];
cu3(0.66015009,1.3299919,1.4316925) q[6],q[9];
y q[4];
crz(4.0498195) q[5],q[0];
cswap q[3],q[1],q[4];
cswap q[9],q[6],q[5];
swap q[2],q[8];
cu1(0.71085404) q[7],q[0];
h q[7];
x q[4];
cz q[0],q[8];
h q[9];
rz(4.8414) q[1];
rzz(0.45598816) q[2],q[6];
rz(3.227338) q[3];
ry(5.0830928) q[5];
cz q[6],q[9];
t q[2];
id q[5];
z q[1];
cy q[3],q[0];
cswap q[8],q[4],q[7];
ccx q[1],q[6],q[9];
cy q[4],q[2];
ccx q[7],q[8],q[0];
cu3(5.0430545,2.8536055,3.2255635) q[3],q[5];
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
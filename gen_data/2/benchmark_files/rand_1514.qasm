OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[5],q[1],q[8];
t q[2];
swap q[9],q[0];
y q[3];
ccx q[7],q[4],q[6];
z q[6];
s q[0];
rzz(4.3718248) q[5],q[1];
cswap q[8],q[4],q[3];
x q[7];
cu3(0.95348772,4.0083159,5.9086215) q[2],q[9];
tdg q[9];
cx q[4],q[7];
cx q[3],q[1];
cswap q[8],q[0],q[6];
rzz(6.2492406) q[5],q[2];
ch q[6],q[1];
ccx q[7],q[8],q[2];
cswap q[5],q[4],q[9];
sdg q[0];
sdg q[3];
cswap q[1],q[6],q[5];
cy q[7],q[2];
cswap q[3],q[9],q[0];
cy q[4],q[8];
ccx q[6],q[4],q[5];
cswap q[0],q[2],q[3];
cswap q[1],q[7],q[9];
id q[8];
cswap q[7],q[3],q[8];
cy q[6],q[1];
cswap q[0],q[2],q[4];
h q[5];
t q[9];
ccx q[6],q[2],q[0];
id q[1];
cswap q[8],q[5],q[7];
cswap q[3],q[9],q[4];
x q[4];
swap q[1],q[6];
swap q[3],q[0];
ccx q[8],q[5],q[2];
crz(3.0722676) q[7],q[9];
u1(3.6737632) q[7];
ry(4.3596593) q[1];
cx q[0],q[8];
cx q[4],q[6];
rzz(2.7384187) q[2],q[5];
cx q[9],q[3];
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
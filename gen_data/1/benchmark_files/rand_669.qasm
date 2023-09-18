OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cu3(4.7433929,2.6886351,2.3970535) q[2],q[8];
ccx q[9],q[3],q[6];
rzz(1.1361588) q[0],q[5];
crz(1.0883526) q[1],q[4];
sdg q[7];
cu1(5.0866929) q[9],q[4];
t q[3];
cswap q[0],q[2],q[8];
ch q[1],q[7];
rx(3.0973171) q[5];
z q[6];
cswap q[9],q[6],q[8];
rzz(5.0390549) q[5],q[4];
sdg q[0];
crz(5.1328781) q[3],q[2];
u2(4.7129918,2.9384545) q[1];
y q[7];
ccx q[8],q[7],q[5];
ccx q[0],q[9],q[3];
id q[2];
ccx q[1],q[4],q[6];
tdg q[9];
cx q[7],q[4];
cu3(6.1752183,2.9760102,5.3941492) q[2],q[5];
cx q[3],q[6];
x q[1];
x q[8];
ry(5.9133741) q[0];
cswap q[8],q[7],q[2];
ccx q[5],q[6],q[9];
s q[4];
u2(5.4266242,2.4694878) q[0];
rx(4.9445535) q[1];
x q[3];
ccx q[2],q[3],q[6];
cu1(2.5334916) q[4],q[8];
cu3(4.707221,3.8513108,2.1778337) q[7],q[5];
u3(2.5045668,6.1839939,5.5054042) q[9];
rzz(0.89424934) q[0],q[1];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cz q[6],q[7];
tdg q[1];
swap q[8],q[5];
cswap q[0],q[3],q[2];
cu1(3.3041578) q[9],q[4];
cswap q[8],q[1],q[3];
ccx q[2],q[5],q[4];
rz(2.141471) q[9];
ccx q[6],q[0],q[7];
u1(3.8165925) q[1];
cx q[2],q[8];
tdg q[9];
cu1(0.97716817) q[4],q[6];
u2(4.7442073,4.294731) q[7];
u2(1.8332504,1.9058277) q[3];
u1(6.2206791) q[0];
s q[5];
y q[4];
id q[1];
ccx q[7],q[5],q[8];
ccx q[2],q[3],q[9];
h q[6];
h q[0];
cswap q[0],q[3],q[4];
crz(5.9279131) q[7],q[5];
z q[2];
h q[6];
u2(5.3228159,4.0193786) q[1];
id q[9];
ry(0.56008905) q[8];
cu1(5.0275457) q[6],q[8];
cu1(3.4619626) q[9],q[2];
swap q[1],q[4];
cswap q[5],q[3],q[7];
s q[0];
swap q[4],q[0];
rz(3.7608903) q[3];
cu3(5.9967048,2.1172293,1.507444) q[9],q[7];
ccx q[5],q[2],q[1];
id q[8];
sdg q[6];
crz(5.6241074) q[2],q[9];
t q[1];
u2(3.7401951,1.9599418) q[6];
u1(5.3489644) q[5];
ccx q[4],q[3],q[0];
y q[8];
x q[7];
cz q[6],q[5];
ccx q[3],q[8],q[2];
cswap q[1],q[7],q[4];
u1(5.8707121) q[0];
ry(4.0131863) q[9];
ccx q[8],q[6],q[2];
cswap q[1],q[9],q[4];
ch q[0],q[7];
ch q[3],q[5];
ccx q[2],q[8],q[3];
sdg q[0];
h q[4];
cswap q[7],q[9],q[6];
z q[1];
h q[5];
tdg q[7];
cz q[8],q[5];
ch q[0],q[2];
swap q[4],q[3];
y q[6];
ch q[1],q[9];
t q[7];
tdg q[6];
tdg q[1];
rx(2.1870895) q[3];
rz(4.291223) q[2];
ccx q[8],q[4],q[5];
h q[9];
y q[0];
ch q[7],q[8];
cswap q[4],q[6],q[1];
cswap q[0],q[3],q[9];
cu3(3.1436136,5.7575182,4.4667008) q[2],q[5];
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
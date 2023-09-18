OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rx(4.400731) q[2];
ccx q[7],q[8],q[9];
swap q[3],q[6];
cu3(1.2468004,5.4180248,1.2599479) q[5],q[1];
crz(0.9637907) q[4],q[0];
cu1(4.0138406) q[7],q[3];
ccx q[0],q[5],q[8];
rz(2.1170408) q[4];
cu3(2.7189109,0.46307976,2.1145065) q[1],q[2];
cu1(3.1476982) q[9],q[6];
cu3(2.921782,2.4590111,5.6006462) q[1],q[8];
ch q[0],q[3];
ccx q[9],q[4],q[2];
ccx q[7],q[5],q[6];
cu3(0.39625301,3.5048431,1.319617) q[5],q[4];
cx q[1],q[2];
ccx q[9],q[8],q[7];
cswap q[0],q[6],q[3];
cswap q[3],q[2],q[4];
ch q[5],q[8];
rx(1.7920141) q[0];
cz q[6],q[9];
y q[1];
rx(0.31943326) q[7];
cx q[2],q[9];
cswap q[7],q[6],q[5];
cx q[4],q[3];
sdg q[8];
cz q[0],q[1];
swap q[8],q[7];
sdg q[2];
s q[4];
u2(0.89717275,5.5274276) q[9];
cswap q[3],q[0],q[1];
rz(4.7395687) q[6];
tdg q[5];
cu1(1.0439357) q[7],q[2];
t q[6];
crz(4.564448) q[1],q[0];
swap q[4],q[9];
h q[3];
u1(2.7546098) q[5];
y q[8];
ccx q[1],q[9],q[4];
u1(0.06231232) q[7];
crz(2.1854579) q[2],q[0];
ch q[3],q[8];
cu1(2.2035795) q[5],q[6];
ch q[2],q[7];
u2(3.631109,3.0082704) q[5];
ccx q[0],q[3],q[1];
crz(3.6218918) q[8],q[4];
swap q[6],q[9];
cswap q[5],q[8],q[3];
ch q[7],q[4];
ry(2.8417001) q[0];
rzz(0.079106811) q[9],q[6];
rx(4.1066035) q[1];
x q[2];
ccx q[9],q[5],q[6];
ccx q[7],q[4],q[2];
tdg q[3];
id q[0];
cu3(0.7335981,6.2803062,1.7606184) q[8],q[1];
cu3(4.8664133,5.3204855,3.2286927) q[3],q[2];
cu3(4.8335095,3.6174479,4.8173698) q[0],q[9];
ccx q[6],q[7],q[5];
tdg q[8];
crz(3.3240849) q[4],q[1];
ccx q[2],q[5],q[4];
u3(0.17611614,0.80433967,0.75525566) q[0];
cswap q[8],q[1],q[6];
ccx q[3],q[7],q[9];
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
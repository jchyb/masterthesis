OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ch q[2],q[3];
ccx q[8],q[1],q[9];
cswap q[6],q[7],q[4];
tdg q[5];
ry(2.4413575) q[0];
ccx q[0],q[9],q[5];
ccx q[4],q[2],q[1];
cu1(5.7555428) q[7],q[8];
s q[6];
t q[3];
u3(3.1228308,1.4998356,4.231332) q[2];
cy q[4],q[3];
cz q[8],q[7];
id q[0];
sdg q[1];
crz(1.4545738) q[9],q[5];
z q[6];
crz(4.2974894) q[8],q[2];
u1(6.0428993) q[3];
ccx q[5],q[9],q[7];
cz q[0],q[4];
tdg q[1];
u1(1.2553621) q[6];
t q[9];
cx q[0],q[2];
cu1(6.0074517) q[4],q[6];
y q[5];
ry(5.7710767) q[1];
cy q[7],q[8];
z q[3];
ry(2.8971465) q[1];
ch q[0],q[3];
cswap q[8],q[9],q[6];
ccx q[4],q[5],q[2];
s q[7];
tdg q[2];
cx q[5],q[6];
crz(0.40367415) q[8],q[0];
rzz(2.1020946) q[9],q[7];
cu1(2.8233565) q[1],q[3];
h q[4];
rx(1.2496368) q[3];
sdg q[5];
swap q[9],q[8];
cswap q[1],q[0],q[2];
cswap q[4],q[7],q[6];
ccx q[5],q[1],q[0];
cx q[8],q[2];
rz(3.3523525) q[4];
crz(5.5984986) q[6],q[3];
u3(3.8667991,0.61125912,2.7438358) q[7];
x q[9];
rzz(5.7942626) q[1],q[0];
cswap q[4],q[5],q[9];
cu3(3.4922541,1.5424285,4.5610932) q[2],q[8];
ccx q[7],q[3],q[6];
cswap q[7],q[0],q[4];
ry(2.4370192) q[6];
h q[5];
cswap q[2],q[9],q[3];
crz(1.2901396) q[8],q[1];
ccx q[2],q[6],q[1];
cswap q[8],q[3],q[5];
ccx q[7],q[9],q[4];
t q[0];
cswap q[3],q[1],q[8];
sdg q[6];
id q[7];
cz q[9],q[4];
ccx q[2],q[5],q[0];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
u1(2.7548627) q[5];
swap q[2],q[3];
u2(4.6142185,3.4704585) q[6];
u1(4.7104106) q[0];
cz q[9],q[7];
ccx q[1],q[8],q[4];
swap q[6],q[0];
ccx q[5],q[3],q[9];
id q[4];
cx q[7],q[2];
cy q[8],q[1];
z q[8];
ccx q[1],q[0],q[9];
cswap q[7],q[2],q[6];
y q[5];
swap q[3],q[4];
tdg q[0];
h q[3];
cswap q[5],q[6],q[4];
cu1(2.5650691) q[7],q[1];
swap q[2],q[9];
ry(4.974171) q[8];
sdg q[3];
ccx q[9],q[0],q[4];
cswap q[7],q[5],q[6];
cu3(2.7023293,5.8327418,5.0364116) q[2],q[8];
rz(3.0033186) q[1];
y q[8];
cswap q[7],q[1],q[6];
rz(3.4049821) q[5];
rzz(0.50001197) q[9],q[3];
swap q[2],q[0];
u2(4.5744705,5.90002) q[4];
cswap q[6],q[4],q[9];
cu3(1.8106951,1.8076041,2.4345843) q[7],q[3];
cswap q[1],q[2],q[0];
rzz(5.2125579) q[8],q[5];
cu1(3.4616226) q[6],q[5];
swap q[2],q[4];
crz(1.8801398) q[9],q[7];
x q[0];
cswap q[3],q[8],q[1];
cy q[7],q[4];
ccx q[3],q[1],q[2];
tdg q[5];
swap q[8],q[6];
tdg q[9];
sdg q[0];
s q[2];
cz q[9],q[5];
cu1(1.9219481) q[7],q[3];
sdg q[8];
z q[4];
u3(3.4540286,1.8187402,3.7371055) q[6];
tdg q[0];
sdg q[1];
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
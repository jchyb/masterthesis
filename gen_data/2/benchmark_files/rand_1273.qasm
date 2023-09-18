OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cy q[4],q[2];
x q[8];
cswap q[9],q[3],q[7];
t q[0];
cz q[6],q[5];
u2(3.0776997,0.78650421) q[1];
cu3(1.0698404,1.317983,6.2767995) q[4],q[9];
cy q[7],q[3];
rx(2.7514011) q[8];
u2(5.325246,1.3908986) q[5];
u3(3.8526395,1.5323697,4.2859378) q[2];
u2(4.2314288,5.0608703) q[1];
cu1(6.1706915) q[6],q[0];
x q[3];
h q[8];
cu3(2.8728617,2.3241936,0.82820311) q[5],q[9];
cx q[2],q[6];
ccx q[7],q[0],q[4];
rz(5.6271953) q[1];
rzz(0.44179944) q[5],q[9];
cswap q[4],q[0],q[3];
ch q[6],q[1];
s q[2];
cx q[8],q[7];
u3(0.56509694,3.1098642,1.9039654) q[1];
ccx q[7],q[0],q[9];
cu1(2.5978767) q[8],q[6];
s q[2];
cz q[5],q[3];
u1(6.2181157) q[4];
swap q[0],q[2];
ccx q[8],q[4],q[6];
swap q[1],q[5];
h q[7];
x q[3];
rz(2.495569) q[9];
y q[4];
crz(2.6050011) q[7],q[2];
ccx q[0],q[5],q[1];
id q[8];
ry(5.1872283) q[9];
cu1(1.3400992) q[3],q[6];
ccx q[1],q[2],q[3];
ccx q[8],q[0],q[4];
u1(0.64824276) q[6];
crz(5.4740596) q[7],q[9];
s q[5];
tdg q[2];
crz(4.3830765) q[8],q[0];
crz(2.7513373) q[7],q[3];
cu3(4.4890069,0.36760795,4.3092605) q[9],q[6];
ccx q[1],q[5],q[4];
cswap q[7],q[6],q[4];
ccx q[1],q[8],q[3];
u2(3.6936914,2.6412039) q[9];
cswap q[5],q[0],q[2];
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
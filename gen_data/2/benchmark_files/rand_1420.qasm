OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
h q[8];
z q[1];
cy q[4],q[0];
cx q[6],q[2];
ccx q[9],q[5],q[7];
y q[3];
crz(3.2892589) q[6],q[1];
sdg q[2];
ccx q[7],q[3],q[4];
swap q[8],q[0];
id q[9];
rz(2.8924381) q[5];
ry(4.255687) q[6];
cswap q[7],q[3],q[1];
cz q[5],q[0];
cswap q[2],q[9],q[8];
u3(4.8371214,3.9739874,0.35697232) q[4];
cswap q[0],q[5],q[7];
u2(5.5607709,4.2816143) q[1];
y q[6];
tdg q[3];
y q[2];
s q[9];
cu3(5.1502624,1.0474857,4.6512457) q[4],q[8];
cu3(0.38073565,3.0673525,0.73194279) q[7],q[3];
swap q[4],q[6];
swap q[2],q[9];
cswap q[1],q[0],q[5];
u2(4.0237854,4.7698224) q[8];
cswap q[7],q[2],q[5];
cswap q[8],q[6],q[3];
ccx q[0],q[9],q[1];
rx(2.0669281) q[4];
cu3(5.1853787,5.6511847,2.2127566) q[8],q[3];
u2(0.63328763,5.038122) q[2];
cswap q[6],q[9],q[0];
cswap q[4],q[1],q[7];
ry(5.4520452) q[5];
cu1(6.108759) q[2],q[8];
u2(0.040939509,0.70471906) q[1];
rzz(0.53665299) q[5],q[9];
ccx q[3],q[6],q[0];
ch q[4],q[7];
cu3(2.2071915,3.4144284,4.2035722) q[1],q[7];
crz(2.1072292) q[3],q[4];
cswap q[6],q[8],q[5];
cswap q[0],q[9],q[2];
swap q[6],q[9];
cswap q[8],q[0],q[2];
swap q[4],q[7];
crz(3.8254275) q[5],q[3];
rz(4.6090349) q[1];
cx q[3],q[0];
ccx q[1],q[5],q[8];
id q[9];
rx(1.9397459) q[2];
x q[7];
z q[6];
u2(0.64114565,3.6933367) q[4];
ccx q[3],q[0],q[7];
cy q[6],q[5];
cswap q[1],q[4],q[2];
rx(3.387587) q[9];
rx(2.2202322) q[8];
ccx q[8],q[4],q[5];
ccx q[6],q[0],q[1];
u2(1.8144227,5.0941852) q[9];
cu3(5.6363359,0.21370212,4.9007908) q[2],q[3];
tdg q[7];
cswap q[8],q[1],q[5];
ccx q[9],q[6],q[3];
ccx q[4],q[0],q[7];
ry(3.1621586) q[2];
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

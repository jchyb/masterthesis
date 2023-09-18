OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
s q[7];
cu3(1.2627107,5.0216874,0.88671793) q[8],q[5];
ccx q[6],q[3],q[9];
cu1(2.2663855) q[2],q[4];
s q[0];
rx(1.6594141) q[1];
cy q[0],q[9];
cx q[8],q[2];
cz q[1],q[7];
cswap q[5],q[6],q[3];
x q[4];
ccx q[5],q[1],q[9];
cu1(1.3606633) q[4],q[8];
cswap q[0],q[6],q[2];
crz(5.3493087) q[3],q[7];
y q[0];
h q[6];
cswap q[1],q[5],q[3];
cswap q[4],q[7],q[8];
sdg q[9];
x q[2];
ccx q[8],q[4],q[6];
cswap q[9],q[7],q[0];
ccx q[5],q[1],q[2];
rz(2.0331959) q[3];
ccx q[1],q[9],q[3];
rzz(6.0185653) q[8],q[6];
cx q[4],q[7];
y q[0];
cu3(5.3401353,0.69751694,1.9857141) q[5],q[2];
cswap q[5],q[0],q[8];
ccx q[1],q[3],q[2];
ccx q[7],q[6],q[9];
rx(4.5394578) q[4];
swap q[6],q[8];
tdg q[4];
cu1(5.5018543) q[7],q[2];
sdg q[5];
cswap q[1],q[0],q[9];
s q[3];
cy q[9],q[6];
x q[5];
z q[1];
cswap q[3],q[7],q[2];
id q[8];
id q[0];
u3(3.8266971,3.7163734,4.6688431) q[4];
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
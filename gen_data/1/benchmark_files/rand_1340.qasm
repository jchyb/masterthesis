OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
crz(5.5045047) q[7],q[3];
ch q[2],q[1];
cswap q[5],q[0],q[6];
ccx q[4],q[9],q[8];
cswap q[5],q[0],q[7];
cu3(2.99831,4.5339201,2.2345078) q[8],q[3];
ccx q[6],q[1],q[9];
u2(5.3140624,2.2383605) q[4];
t q[2];
u3(0.91906942,0.92664825,0.04188874) q[1];
t q[2];
u3(3.4103553,5.1913749,3.7038275) q[7];
rzz(4.0840522) q[9],q[5];
cu3(2.975888,1.8159171,0.90006757) q[8],q[4];
cswap q[3],q[6],q[0];
s q[1];
tdg q[2];
h q[0];
z q[4];
swap q[7],q[9];
ccx q[5],q[8],q[3];
u2(5.7975945,4.0929439) q[6];
cswap q[7],q[1],q[5];
cswap q[9],q[0],q[4];
cswap q[3],q[8],q[6];
ry(5.0605862) q[2];
s q[8];
rzz(1.1411499) q[7],q[3];
cx q[6],q[2];
y q[9];
ch q[4],q[0];
cy q[5],q[1];
ccx q[1],q[5],q[8];
cu3(5.9218705,6.2437043,1.7888465) q[2],q[4];
t q[3];
cswap q[9],q[7],q[0];
y q[6];
cu1(4.6466097) q[7],q[4];
ccx q[5],q[3],q[6];
cz q[1],q[8];
ccx q[2],q[9],q[0];
cu3(0.47673344,4.7317908,3.8517747) q[3],q[5];
cu3(1.1175321,0.67898706,3.0396149) q[1],q[4];
u2(0.81550749,1.629424) q[2];
id q[7];
cswap q[8],q[0],q[9];
sdg q[6];
ccx q[2],q[8],q[7];
rzz(3.2554046) q[3],q[0];
rzz(0.67913871) q[4],q[5];
sdg q[1];
crz(3.7785609) q[6],q[9];
ry(4.5034564) q[8];
cswap q[9],q[5],q[0];
u3(1.3759142,5.9144674,0.4887947) q[3];
cswap q[4],q[7],q[2];
cu1(4.629587) q[6],q[1];
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
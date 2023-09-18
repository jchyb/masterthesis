OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
tdg q[3];
tdg q[4];
cswap q[2],q[9],q[5];
cswap q[8],q[0],q[7];
tdg q[6];
u2(0.46147086,5.7978986) q[1];
ccx q[0],q[6],q[3];
t q[2];
tdg q[9];
rzz(1.0524461) q[1],q[5];
swap q[4],q[8];
tdg q[7];
cy q[2],q[8];
h q[4];
crz(4.9139212) q[1],q[5];
crz(0.24347529) q[3],q[7];
cu1(4.4857686) q[6],q[9];
rz(5.4562847) q[0];
u1(0.57207956) q[3];
cu3(3.5804765,4.3179804,2.6078701) q[8],q[9];
swap q[0],q[2];
cswap q[5],q[7],q[4];
cy q[6],q[1];
id q[9];
ccx q[8],q[2],q[1];
crz(4.7631832) q[4],q[6];
ccx q[3],q[7],q[0];
tdg q[5];
ccx q[6],q[3],q[1];
u1(5.4798001) q[2];
x q[7];
u3(1.7766395,1.7246703,2.9718593) q[4];
t q[9];
cz q[5],q[0];
x q[8];
t q[7];
h q[4];
cswap q[9],q[0],q[3];
cz q[5],q[1];
ccx q[8],q[6],q[2];
cswap q[5],q[3],q[6];
cswap q[8],q[2],q[4];
cu3(2.1864543,2.6019517,6.0989322) q[1],q[7];
u2(5.3232164,4.412982) q[9];
ry(0.37284948) q[0];
cu3(0.11315278,4.2586744,1.6091584) q[5],q[1];
ccx q[7],q[8],q[3];
cswap q[0],q[4],q[2];
rz(2.2084202) q[9];
s q[6];
u1(6.1948453) q[1];
ccx q[6],q[9],q[3];
cswap q[8],q[0],q[2];
rz(0.75465365) q[7];
cu1(5.6875801) q[5],q[4];
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
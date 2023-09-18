OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cu1(5.8153037) q[5],q[3];
cswap q[8],q[6],q[9];
cu3(0.97566054,2.6171033,4.953206) q[2],q[1];
cu3(2.5644749,3.9990142,4.7533948) q[0],q[7];
u1(3.9036212) q[4];
cx q[8],q[6];
tdg q[1];
rzz(0.47901153) q[4],q[9];
cswap q[7],q[2],q[5];
swap q[3],q[0];
crz(0.16983889) q[7],q[9];
cu3(6.0618489,2.073322,4.3486012) q[3],q[5];
rzz(1.6063332) q[0],q[8];
cy q[1],q[6];
ch q[4],q[2];
cswap q[0],q[8],q[6];
tdg q[1];
crz(5.2872229) q[2],q[9];
ccx q[5],q[4],q[7];
rx(3.0183333) q[3];
u1(5.144648) q[3];
ccx q[4],q[8],q[7];
cy q[0],q[6];
t q[2];
cu1(5.8238737) q[5],q[1];
rx(1.1710123) q[9];
u3(5.5480116,5.0916351,3.3894278) q[5];
cu3(2.0590835,4.9470618,5.3465569) q[7],q[4];
t q[3];
ch q[2],q[0];
cx q[6],q[1];
tdg q[9];
h q[8];
sdg q[1];
ccx q[6],q[0],q[2];
cu1(2.792471) q[3],q[9];
u2(1.0193534,1.7916018) q[7];
cu1(3.4404062) q[8],q[4];
tdg q[5];
cu3(1.7248174,2.814155,2.9787917) q[4],q[2];
sdg q[5];
cswap q[9],q[3],q[0];
ccx q[8],q[7],q[6];
s q[1];
u3(4.2997461,1.3592049,6.268896) q[7];
cy q[3],q[8];
cswap q[0],q[2],q[4];
cu3(4.9294166,3.7725134,2.3945913) q[1],q[9];
h q[6];
sdg q[5];
ccx q[2],q[1],q[3];
rz(5.2020392) q[4];
cswap q[0],q[5],q[9];
swap q[8],q[6];
x q[7];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
crz(1.5487802) q[5],q[8];
cx q[7],q[0];
id q[1];
ccx q[9],q[2],q[6];
swap q[3],q[4];
cswap q[2],q[4],q[9];
cswap q[6],q[8],q[1];
u1(2.2208073) q[0];
cz q[7],q[5];
u3(3.2300032,0.4811296,3.0432237) q[3];
cswap q[2],q[8],q[7];
cu1(0.85050097) q[9],q[3];
u3(1.9341067,0.6841216,1.7070908) q[1];
cz q[6],q[4];
s q[0];
y q[5];
cswap q[4],q[3],q[8];
u3(2.0113124,1.0324474,4.6680098) q[2];
ccx q[7],q[5],q[1];
ccx q[0],q[9],q[6];
cswap q[5],q[0],q[2];
ccx q[9],q[1],q[3];
u1(0.82294039) q[4];
rz(4.2410213) q[8];
u2(0.59484524,1.6109906) q[7];
u2(6.0223252,5.147884) q[6];
cy q[6],q[5];
ch q[1],q[7];
ch q[9],q[8];
cu1(2.1240626) q[3],q[4];
rx(1.8731519) q[2];
u1(0.3838182) q[0];
s q[6];
ccx q[1],q[2],q[7];
cy q[8],q[3];
rzz(6.1723396) q[0],q[4];
z q[9];
rz(4.6855715) q[5];
cy q[1],q[2];
cy q[3],q[5];
rzz(0.83348881) q[4],q[9];
ccx q[8],q[7],q[6];
u1(0.061323719) q[0];
swap q[1],q[9];
ccx q[0],q[7],q[4];
cswap q[5],q[8],q[6];
x q[3];
u3(4.060727,4.6119599,5.4397046) q[2];
z q[7];
tdg q[3];
cu1(4.080065) q[0],q[8];
ccx q[5],q[4],q[2];
ccx q[9],q[1],q[6];
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
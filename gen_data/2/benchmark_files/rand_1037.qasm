OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
t q[5];
cx q[3],q[7];
swap q[0],q[1];
ccx q[9],q[2],q[4];
cy q[6],q[8];
swap q[2],q[7];
ccx q[5],q[3],q[9];
cswap q[6],q[4],q[0];
cu3(1.8102075,2.6571423,4.7108675) q[1],q[8];
y q[1];
u2(3.2882187,1.9728537) q[9];
tdg q[8];
ccx q[5],q[2],q[6];
y q[3];
cswap q[0],q[4],q[7];
cx q[1],q[4];
x q[9];
rzz(0.41011201) q[5],q[2];
t q[0];
u1(0.4726052) q[6];
y q[7];
u3(2.57115,2.675034,5.5334624) q[8];
ry(5.1591933) q[3];
u3(4.7395471,3.1485946,2.7383496) q[0];
cswap q[6],q[9],q[8];
ccx q[7],q[3],q[4];
cswap q[2],q[5],q[1];
ry(3.5123456) q[8];
ccx q[9],q[0],q[4];
cz q[6],q[7];
cu1(5.1394552) q[3],q[5];
cz q[2],q[1];
ch q[0],q[3];
cswap q[4],q[6],q[1];
s q[2];
swap q[7],q[8];
tdg q[5];
u2(3.3685112,0.066251311) q[9];
u1(4.8032001) q[9];
u1(2.6230682) q[3];
cswap q[0],q[8],q[7];
crz(2.1847481) q[1],q[6];
cu3(3.7741603,0.37800532,5.9018959) q[5],q[2];
sdg q[4];
cu3(1.4791039,4.65556,0.10976752) q[0],q[3];
cswap q[2],q[4],q[5];
ccx q[7],q[1],q[6];
rzz(2.4406027) q[8],q[9];
cy q[3],q[6];
cswap q[2],q[0],q[5];
tdg q[9];
sdg q[1];
swap q[7],q[4];
sdg q[8];
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
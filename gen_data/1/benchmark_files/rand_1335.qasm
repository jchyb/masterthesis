OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cu1(5.196157) q[2],q[5];
cu1(2.1791508) q[1],q[3];
cy q[6],q[7];
cx q[0],q[8];
swap q[4],q[9];
ch q[5],q[3];
cy q[6],q[0];
ccx q[8],q[9],q[1];
cu3(4.0950339,0.061511234,2.0654683) q[4],q[7];
ry(4.7736321) q[2];
u2(4.4871542,3.7818247) q[9];
cswap q[7],q[4],q[2];
cz q[0],q[3];
x q[5];
sdg q[1];
swap q[6],q[8];
rx(4.2313712) q[7];
ccx q[1],q[3],q[4];
rzz(5.7014068) q[8],q[6];
cswap q[9],q[0],q[2];
id q[5];
cswap q[1],q[9],q[0];
cswap q[2],q[6],q[7];
cswap q[4],q[8],q[3];
z q[5];
y q[7];
rzz(0.23918793) q[0],q[3];
ch q[1],q[6];
crz(5.5088476) q[4],q[5];
rx(4.210052) q[2];
cy q[8],q[9];
x q[6];
ch q[7],q[3];
crz(2.0949506) q[0],q[2];
rzz(3.229984) q[9],q[4];
ccx q[1],q[8],q[5];
h q[4];
tdg q[5];
ccx q[9],q[8],q[0];
cx q[3],q[2];
h q[7];
y q[1];
id q[6];
ccx q[6],q[1],q[7];
cz q[5],q[3];
ccx q[4],q[0],q[9];
rzz(5.3129558) q[8],q[2];
z q[9];
crz(1.7383052) q[0],q[6];
cswap q[1],q[5],q[4];
u3(2.1628554,5.995096,1.1919203) q[7];
ch q[2],q[8];
rz(3.6756077) q[3];
y q[4];
ch q[6],q[1];
y q[0];
rz(1.2668037) q[8];
u2(5.5727646,3.0160795) q[5];
z q[9];
ccx q[7],q[2],q[3];
cz q[4],q[1];
crz(0.42983142) q[3],q[0];
cswap q[5],q[9],q[7];
ccx q[8],q[6],q[2];
ccx q[5],q[3],q[6];
cswap q[7],q[2],q[8];
rzz(0.12660794) q[9],q[1];
u1(4.3817863) q[4];
ry(2.3699324) q[0];
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
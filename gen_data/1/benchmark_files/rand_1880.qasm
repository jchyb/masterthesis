OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
t q[6];
cswap q[1],q[9],q[8];
cy q[3],q[7];
cswap q[2],q[4],q[5];
rx(3.9456387) q[0];
ccx q[0],q[8],q[9];
crz(1.6072054) q[7],q[5];
ccx q[2],q[1],q[4];
sdg q[3];
rz(3.8347514) q[6];
h q[6];
cswap q[0],q[7],q[4];
ccx q[5],q[1],q[8];
cswap q[9],q[3],q[2];
y q[2];
id q[0];
crz(0.83709789) q[8],q[6];
rzz(2.0006978) q[1],q[9];
t q[7];
cx q[4],q[5];
u3(6.1798788,6.1276872,6.0962826) q[3];
cu3(0.80141631,2.4678334,0.66131395) q[7],q[9];
id q[6];
cswap q[0],q[1],q[3];
tdg q[5];
cx q[4],q[8];
h q[2];
cy q[1],q[5];
ccx q[4],q[8],q[7];
t q[2];
rx(6.0513057) q[6];
swap q[0],q[3];
id q[9];
ccx q[6],q[3],q[9];
cu3(5.3796317,0.21245636,3.1122971) q[0],q[4];
x q[1];
cu3(4.8270894,5.8971498,4.0752059) q[2],q[7];
crz(5.9721776) q[5],q[8];
cx q[9],q[8];
ccx q[6],q[2],q[4];
cx q[0],q[3];
z q[1];
cu3(3.0678145,5.0739257,3.6794274) q[5],q[7];
rz(1.5332145) q[1];
cz q[4],q[6];
rzz(4.4766565) q[8],q[7];
cu3(5.4750343,0.53802987,6.2387998) q[9],q[2];
swap q[3],q[5];
tdg q[0];
sdg q[5];
cswap q[1],q[3],q[6];
ccx q[8],q[2],q[0];
ccx q[7],q[9],q[4];
cu1(5.1004028) q[4],q[0];
s q[7];
cswap q[1],q[5],q[9];
cx q[2],q[6];
cz q[3],q[8];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cy q[9],q[6];
rx(1.0760295) q[3];
cswap q[0],q[5],q[4];
swap q[2],q[8];
ry(5.3086286) q[1];
tdg q[7];
sdg q[0];
swap q[5],q[1];
ccx q[8],q[3],q[6];
cswap q[7],q[2],q[9];
y q[4];
u1(4.2333768) q[0];
cswap q[9],q[5],q[6];
s q[2];
ccx q[3],q[8],q[1];
u1(5.7521431) q[7];
u3(1.1130003,5.0270405,3.7267755) q[4];
t q[3];
u1(6.0897539) q[8];
cswap q[4],q[1],q[0];
h q[2];
ccx q[6],q[7],q[5];
u3(4.4855571,3.3854928,3.9229534) q[9];
sdg q[7];
s q[0];
u2(4.3037037,2.1325156) q[2];
ccx q[5],q[8],q[9];
rzz(0.61606237) q[3],q[6];
crz(4.0906233) q[4],q[1];
ccx q[9],q[2],q[5];
ch q[6],q[8];
ch q[1],q[4];
crz(2.3849144) q[3],q[7];
id q[0];
cswap q[2],q[9],q[1];
id q[3];
ch q[8],q[5];
swap q[0],q[6];
ry(0.84636175) q[4];
u1(3.5656772) q[7];
cswap q[8],q[4],q[5];
cswap q[3],q[2],q[0];
cswap q[9],q[6],q[7];
u1(2.0230817) q[1];
id q[3];
cswap q[2],q[1],q[7];
u2(1.0549874,0.6356096) q[5];
rz(3.1916686) q[9];
id q[4];
cswap q[8],q[0],q[6];
swap q[6],q[8];
h q[9];
z q[1];
cswap q[0],q[7],q[5];
cswap q[4],q[3],q[2];
ry(5.7052471) q[1];
cy q[4],q[0];
rzz(1.7431156) q[8],q[6];
cswap q[2],q[9],q[5];
swap q[7],q[3];
cz q[3],q[5];
t q[1];
ch q[8],q[0];
rx(3.9997143) q[9];
u3(0.31937229,3.8862357,1.9859991) q[2];
u2(4.8172875,2.1317364) q[4];
z q[7];
rx(0.93411992) q[6];
sdg q[1];
ccx q[3],q[5],q[8];
h q[0];
rzz(5.6413794) q[7],q[6];
cswap q[2],q[9],q[4];
t q[3];
cx q[7],q[2];
cswap q[9],q[1],q[6];
cu1(1.9452164) q[0],q[8];
u1(4.5610862) q[4];
y q[5];
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
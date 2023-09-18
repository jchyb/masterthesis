OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cu3(1.3100264,5.8384983,5.7213078) q[3],q[1];
ch q[9],q[6];
cswap q[5],q[2],q[7];
cu1(1.1419065) q[8],q[4];
t q[0];
cu3(3.434356,3.5571341,1.3049905) q[5],q[2];
cu3(5.9747001,5.9989711,5.5126171) q[3],q[1];
y q[8];
cswap q[0],q[9],q[6];
rz(3.7756842) q[4];
u1(5.1700499) q[7];
z q[4];
crz(0.024144852) q[2],q[5];
cz q[7],q[0];
ccx q[8],q[6],q[1];
cy q[3],q[9];
swap q[6],q[7];
ccx q[0],q[8],q[9];
id q[5];
cswap q[3],q[1],q[4];
z q[2];
tdg q[3];
rzz(5.7431242) q[1],q[0];
ch q[5],q[4];
cz q[7],q[8];
ccx q[9],q[2],q[6];
ccx q[8],q[1],q[5];
cu1(2.0792797) q[0],q[3];
cu3(1.1782523,3.9552613,0.41687298) q[4],q[7];
cswap q[6],q[9],q[2];
cu1(5.9440236) q[4],q[8];
cswap q[3],q[5],q[6];
u2(3.252681,4.9103866) q[0];
cu3(0.29790215,3.777397,4.3558938) q[7],q[1];
cy q[9],q[2];
s q[0];
ch q[5],q[7];
cswap q[9],q[8],q[6];
crz(4.0715431) q[4],q[3];
rz(3.5908914) q[1];
ry(0.31800841) q[2];
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
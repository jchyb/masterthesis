OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
tdg q[1];
cswap q[9],q[6],q[8];
cy q[2],q[3];
id q[7];
ccx q[4],q[0],q[5];
ccx q[4],q[9],q[5];
ccx q[2],q[6],q[8];
u1(4.8358454) q[0];
ry(0.25868877) q[3];
rz(4.5450609) q[1];
u2(3.4294016,3.2282468) q[7];
u3(2.6150239,4.7159717,0.56179958) q[7];
ccx q[4],q[5],q[8];
s q[3];
ry(4.9936352) q[0];
sdg q[2];
sdg q[1];
x q[9];
id q[6];
cswap q[9],q[2],q[5];
tdg q[8];
cu1(3.0706791) q[4],q[1];
cu3(5.5075742,5.9810636,3.6038721) q[7],q[0];
crz(1.6427866) q[3],q[6];
rx(1.3989891) q[5];
ccx q[7],q[0],q[8];
ch q[2],q[1];
ch q[4],q[6];
h q[9];
sdg q[3];
cswap q[7],q[6],q[8];
cswap q[3],q[2],q[4];
cswap q[5],q[9],q[1];
t q[0];
cx q[2],q[1];
id q[8];
cu3(1.7595549,3.0582218,0.47608656) q[0],q[3];
cswap q[4],q[6],q[7];
swap q[5],q[9];
z q[0];
y q[4];
tdg q[5];
rzz(5.4989451) q[6],q[1];
tdg q[8];
u2(5.9670657,6.0562436) q[2];
u2(3.1124782,2.7248826) q[9];
tdg q[7];
x q[3];
cy q[2],q[8];
rzz(1.3323969) q[4],q[0];
rx(1.8752901) q[9];
cswap q[6],q[3],q[7];
cu3(0.27027162,5.0928617,2.0483906) q[1],q[5];
t q[7];
cu1(0.1713004) q[2],q[0];
ccx q[4],q[8],q[9];
tdg q[5];
rzz(1.0084346) q[1],q[6];
id q[3];
cswap q[0],q[3],q[2];
tdg q[8];
swap q[5],q[1];
cu1(6.085024) q[7],q[4];
cu3(5.1082584,1.0828148,3.7221582) q[6],q[9];
ccx q[3],q[1],q[8];
t q[5];
h q[6];
s q[0];
cu3(3.753576,0.94433097,2.7512416) q[4],q[7];
y q[2];
z q[9];
ccx q[2],q[4],q[5];
rzz(0.45356477) q[3],q[7];
cswap q[6],q[8],q[1];
cu3(0.27945835,6.0342517,1.0010148) q[9],q[0];
ccx q[2],q[5],q[0];
rzz(4.1697853) q[9],q[6];
h q[7];
ccx q[1],q[3],q[4];
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
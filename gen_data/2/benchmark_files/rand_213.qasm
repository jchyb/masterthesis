OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[2],q[5],q[6];
sdg q[3];
cswap q[1],q[0],q[9];
rz(2.8010431) q[7];
rzz(1.5984338) q[8],q[4];
cswap q[8],q[7],q[0];
ccx q[1],q[2],q[5];
rx(5.8351315) q[4];
cswap q[6],q[3],q[9];
crz(1.7441371) q[7],q[6];
t q[9];
ry(5.9845493) q[1];
cswap q[5],q[0],q[3];
ry(2.2826294) q[4];
rx(1.2744849) q[2];
s q[8];
cu1(3.3164061) q[4],q[9];
cu1(4.0937856) q[5],q[7];
s q[8];
u1(0.28621165) q[1];
u1(3.0008309) q[3];
s q[2];
u1(4.3242759) q[6];
s q[0];
u3(0.28638241,2.9091673,2.3801784) q[7];
cswap q[0],q[4],q[9];
cswap q[2],q[1],q[6];
u2(2.1783227,6.025083) q[8];
rx(3.048048) q[3];
y q[5];
cx q[0],q[6];
cx q[3],q[1];
u2(2.1025244,5.151144) q[7];
cu1(4.9874743) q[2],q[9];
x q[4];
id q[5];
u2(0.13736643,2.4932285) q[8];
crz(0.31949332) q[4],q[1];
y q[0];
s q[7];
u3(4.1407935,1.2433915,2.5622743) q[8];
u2(1.9446029,5.2758282) q[6];
cz q[2],q[3];
rzz(4.9859455) q[9],q[5];
z q[3];
ch q[0],q[7];
cy q[8],q[6];
ccx q[9],q[5],q[2];
id q[1];
x q[4];
cx q[0],q[1];
u2(2.2484214,1.8220749) q[5];
cx q[7],q[8];
u1(5.8006273) q[3];
cy q[4],q[2];
rzz(3.5577866) q[9],q[6];
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
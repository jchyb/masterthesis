OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[6],q[1],q[7];
cswap q[2],q[0],q[3];
cu3(5.3455153,4.5114647,0.86954911) q[5],q[8];
ry(4.9538011) q[9];
sdg q[4];
ccx q[7],q[4],q[8];
cu3(4.8542659,5.3456922,3.4013313) q[6],q[1];
sdg q[9];
cu3(4.1169643,3.2822071,3.874695) q[5],q[3];
cu1(6.0491794) q[2],q[0];
cu3(5.9747409,0.50549933,4.635451) q[0],q[1];
z q[2];
ccx q[9],q[6],q[4];
cz q[7],q[5];
cu3(1.1120657,0.031126533,3.2746347) q[8],q[3];
u1(6.0064733) q[0];
z q[7];
cz q[4],q[9];
y q[6];
cy q[3],q[2];
cswap q[1],q[8],q[5];
t q[9];
cswap q[8],q[4],q[7];
sdg q[2];
ccx q[3],q[0],q[5];
rz(0.26080729) q[1];
rx(2.5273941) q[6];
cswap q[5],q[4],q[0];
cswap q[9],q[3],q[1];
crz(5.1592265) q[6],q[2];
u3(4.0452605,4.4827127,3.1372112) q[8];
ry(5.9146366) q[7];
swap q[6],q[8];
rzz(5.3973021) q[7],q[3];
rzz(2.2535909) q[5],q[4];
ccx q[2],q[1],q[0];
rz(4.4434668) q[9];
cswap q[0],q[8],q[4];
t q[9];
ch q[7],q[1];
tdg q[6];
ch q[3],q[2];
h q[5];
rzz(5.8160731) q[0],q[4];
crz(3.3787569) q[3],q[8];
u2(3.3071137,1.3320125) q[5];
ry(1.0322568) q[6];
crz(0.10893646) q[2],q[9];
rx(2.3909056) q[7];
t q[1];
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
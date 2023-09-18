OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cz q[5],q[6];
ccx q[9],q[0],q[7];
cu3(1.1502805,4.5146535,3.0739677) q[8],q[2];
cswap q[1],q[3],q[4];
h q[6];
cswap q[0],q[5],q[2];
ry(3.698724) q[3];
t q[8];
cu1(0.82727618) q[9],q[1];
cu3(2.8653306,3.3406176,4.7496067) q[7],q[4];
cswap q[8],q[1],q[0];
ccx q[6],q[7],q[5];
rzz(5.9529561) q[3],q[9];
x q[2];
tdg q[4];
cu1(2.3315895) q[5],q[3];
ch q[1],q[7];
cswap q[4],q[0],q[6];
cz q[8],q[9];
ry(0.71433888) q[2];
sdg q[4];
cy q[0],q[7];
rx(2.2700106) q[8];
cswap q[2],q[6],q[3];
cy q[1],q[5];
ry(0.057651627) q[9];
y q[4];
tdg q[0];
crz(3.1111713) q[8],q[5];
cz q[7],q[9];
h q[6];
cswap q[3],q[2],q[1];
ccx q[1],q[6],q[2];
u1(5.7565109) q[5];
u1(1.8165429) q[7];
s q[8];
t q[0];
cy q[4],q[9];
u2(3.7873968,4.2189933) q[3];
rzz(3.3578545) q[4],q[7];
u2(2.3533932,2.6152474) q[0];
rzz(1.253125) q[6],q[1];
sdg q[3];
tdg q[5];
cswap q[2],q[8],q[9];
cswap q[7],q[0],q[6];
ccx q[9],q[1],q[5];
cswap q[3],q[4],q[2];
u2(1.5309277,0.1763263) q[8];
cu3(1.167992,1.6212322,4.2600502) q[5],q[1];
cswap q[7],q[4],q[2];
ry(3.9064836) q[6];
cx q[0],q[3];
s q[9];
ry(3.4852242) q[8];
u2(1.4794308,2.1241549) q[4];
ccx q[7],q[0],q[1];
ch q[9],q[2];
cswap q[8],q[3],q[6];
x q[5];
cswap q[8],q[2],q[9];
ch q[0],q[6];
x q[7];
s q[5];
u1(5.2435248) q[4];
tdg q[1];
h q[3];
s q[5];
cy q[7],q[1];
cswap q[4],q[2],q[8];
rx(5.3821304) q[9];
ccx q[0],q[6],q[3];
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
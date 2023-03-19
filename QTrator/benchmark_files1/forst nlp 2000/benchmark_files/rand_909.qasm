OPENQASM 2.0;
include "qelib1.inc";
qreg q[11];
creg c[11];
ccx q[10],q[2],q[9];
cu1(5.2891349) q[8],q[1];
cu1(4.0608254) q[3],q[5];
u3(6.0258224,3.6971514,3.0478427) q[6];
ccx q[7],q[4],q[0];
z q[3];
z q[1];
h q[2];
cswap q[0],q[10],q[8];
sdg q[4];
cswap q[7],q[5],q[9];
rx(3.3371718) q[6];
rzz(1.6750953) q[6],q[2];
tdg q[7];
cswap q[8],q[3],q[10];
cz q[0],q[5];
crz(3.1623677) q[1],q[9];
h q[4];
swap q[4],q[0];
rzz(4.6169225) q[5],q[7];
cu1(4.775414) q[8],q[10];
rz(5.6569812) q[1];
t q[9];
cu1(0.91793689) q[2],q[6];
u2(0.857489,3.9003471) q[3];
cswap q[7],q[3],q[2];
ch q[5],q[1];
swap q[10],q[6];
u3(2.4987236,2.1073423,1.096475) q[8];
cz q[4],q[0];
u3(3.7974303,4.4800102,1.7308572) q[9];
u2(3.4950736,4.2270582) q[1];
t q[8];
rx(0.074776155) q[5];
rzz(0.27474084) q[9],q[7];
y q[4];
cswap q[0],q[10],q[2];
swap q[6],q[3];
rzz(4.2496792) q[5],q[10];
cu3(3.2053533,3.8761082,0.817084) q[6],q[8];
cswap q[4],q[1],q[3];
cswap q[9],q[2],q[0];
ry(0.60727759) q[7];
cswap q[7],q[3],q[5];
cy q[9],q[6];
ch q[1],q[4];
ccx q[8],q[2],q[10];
rx(2.1276313) q[0];
ch q[9],q[7];
ccx q[1],q[5],q[3];
y q[10];
z q[0];
id q[4];
tdg q[2];
crz(5.9043751) q[6],q[8];
ccx q[1],q[8],q[2];
ccx q[10],q[4],q[0];
cu1(4.4189783) q[6],q[9];
ch q[7],q[5];
u2(0.42582267,5.2018863) q[3];
ccx q[7],q[3],q[0];
swap q[5],q[4];
tdg q[8];
ccx q[2],q[6],q[9];
ch q[10],q[1];
u3(2.0185379,1.4281345,4.3174065) q[3];
ccx q[9],q[2],q[0];
cswap q[10],q[8],q[6];
cx q[5],q[7];
cz q[4],q[1];
cz q[1],q[4];
swap q[8],q[3];
rx(5.6463959) q[10];
ch q[7],q[9];
rx(1.7848876) q[0];
ch q[5],q[6];
u1(2.9125679) q[2];
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
measure q[10] -> c[10];

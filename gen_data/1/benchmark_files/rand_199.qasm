OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[7],q[1],q[0];
rzz(5.0189303) q[2],q[4];
cswap q[8],q[9],q[3];
cx q[5],q[6];
cswap q[4],q[5],q[0];
y q[6];
u2(4.3087854,3.3516256) q[3];
cu1(4.8732158) q[1],q[8];
cswap q[7],q[9],q[2];
cy q[8],q[3];
cswap q[2],q[9],q[4];
y q[0];
cswap q[7],q[5],q[6];
ry(4.8177343) q[1];
s q[7];
rzz(2.2479758) q[1],q[2];
ccx q[4],q[9],q[0];
t q[6];
cx q[8],q[3];
z q[5];
ch q[9],q[2];
cu1(1.9646443) q[1],q[7];
sdg q[6];
cswap q[5],q[8],q[4];
rzz(4.9236031) q[3],q[0];
cswap q[3],q[0],q[8];
cswap q[9],q[4],q[2];
cswap q[5],q[6],q[7];
y q[1];
cu3(0.0057272938,4.7012356,4.2388306) q[7],q[9];
cy q[6],q[8];
id q[2];
cswap q[3],q[1],q[5];
ch q[0],q[4];
tdg q[2];
cu3(0.01884001,4.3211928,1.6991038) q[9],q[4];
cx q[0],q[3];
ry(1.630295) q[7];
ry(2.7994297) q[8];
ccx q[5],q[6],q[1];
cz q[9],q[4];
cswap q[2],q[0],q[7];
cswap q[6],q[1],q[5];
cu3(5.9353646,2.8090256,4.9533536) q[8],q[3];
cx q[9],q[3];
ccx q[5],q[1],q[0];
crz(4.0554599) q[2],q[8];
cu3(3.1317121,2.8858562,6.1638012) q[6],q[7];
ry(4.2122824) q[4];
cu1(2.3738008) q[3],q[1];
sdg q[8];
cswap q[2],q[4],q[9];
y q[5];
cu3(3.424985,3.1403402,0.0010124644) q[0],q[6];
tdg q[7];
rx(6.0982971) q[9];
cu1(0.71405302) q[1],q[0];
ccx q[2],q[8],q[5];
ccx q[3],q[6],q[4];
sdg q[7];
ccx q[4],q[0],q[1];
crz(4.6478191) q[5],q[8];
ccx q[6],q[3],q[9];
sdg q[2];
tdg q[7];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rx(5.2757615) q[4];
sdg q[2];
cx q[9],q[7];
cx q[1],q[0];
cswap q[3],q[6],q[5];
t q[8];
tdg q[7];
cz q[2],q[1];
tdg q[4];
cswap q[8],q[3],q[9];
crz(2.4709805) q[6],q[5];
u1(2.2844179) q[0];
cswap q[0],q[2],q[4];
cswap q[1],q[8],q[9];
cx q[5],q[7];
crz(4.0553452) q[3],q[6];
sdg q[5];
cu3(3.3402245,3.2311822,0.5655525) q[8],q[6];
ccx q[1],q[9],q[4];
crz(0.51139087) q[0],q[3];
ch q[7],q[2];
cy q[9],q[0];
tdg q[5];
sdg q[4];
u2(1.1893986,2.8836191) q[3];
y q[2];
cy q[8],q[1];
crz(5.5691863) q[6],q[7];
rzz(3.3898893) q[5],q[7];
rzz(4.6146464) q[2],q[4];
cswap q[9],q[8],q[3];
cx q[0],q[6];
rz(1.0940423) q[1];
cswap q[5],q[3],q[8];
u2(6.2092416,5.1315648) q[4];
ccx q[0],q[1],q[6];
u2(3.5783859,2.0123442) q[9];
cz q[7],q[2];
h q[0];
z q[3];
rzz(3.9225203) q[2],q[5];
u2(1.675807,1.4005136) q[8];
crz(4.0334237) q[9],q[6];
cswap q[4],q[1],q[7];
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
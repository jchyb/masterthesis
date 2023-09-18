OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
h q[8];
rzz(5.6273235) q[0],q[3];
ccx q[1],q[9],q[2];
cswap q[5],q[7],q[6];
u1(5.9291805) q[4];
cswap q[0],q[9],q[4];
crz(3.9443997) q[6],q[7];
cy q[5],q[2];
cu3(3.646427,4.580656,4.6890775) q[1],q[8];
sdg q[3];
id q[5];
ccx q[4],q[6],q[2];
tdg q[8];
ccx q[7],q[0],q[3];
cy q[9],q[1];
u1(2.3065472) q[5];
cswap q[4],q[2],q[8];
rzz(4.8399921) q[6],q[3];
tdg q[9];
s q[1];
rzz(2.1398788) q[7],q[0];
cswap q[0],q[1],q[2];
swap q[3],q[5];
u3(4.8696956,2.4401092,3.0901743) q[9];
ccx q[4],q[7],q[8];
u2(6.2813283,0.84571772) q[6];
u3(4.090934,3.580328,2.0429612) q[2];
rx(6.2613124) q[0];
ccx q[7],q[4],q[9];
t q[3];
u2(4.6607671,0.20109044) q[8];
cu3(5.1147618,4.6558718,3.9612701) q[1],q[5];
tdg q[6];
ccx q[5],q[6],q[1];
rz(1.0622564) q[7];
cu1(0.46475767) q[0],q[9];
cswap q[4],q[2],q[3];
s q[8];
id q[6];
cswap q[3],q[0],q[4];
tdg q[2];
ch q[8],q[9];
u2(5.2393785,1.0749792) q[5];
t q[7];
tdg q[1];
t q[0];
z q[6];
cswap q[7],q[3],q[5];
cx q[9],q[1];
rzz(4.5929447) q[4],q[8];
u3(3.9275955,4.1313766,5.9864219) q[2];
ccx q[8],q[3],q[6];
u3(4.0282041,0.54563758,2.3713885) q[1];
ccx q[9],q[2],q[7];
tdg q[0];
z q[5];
x q[4];
cy q[7],q[5];
tdg q[1];
rzz(3.0326937) q[2],q[3];
id q[9];
cswap q[4],q[8],q[0];
h q[6];
rzz(3.7696383) q[9],q[5];
sdg q[6];
u3(5.8460806,5.4737385,4.3789277) q[0];
cswap q[1],q[2],q[7];
rzz(4.3853995) q[8],q[4];
s q[3];
cz q[5],q[0];
cu1(0.78510295) q[8],q[9];
swap q[1],q[2];
cz q[7],q[4];
t q[3];
u1(1.694017) q[6];
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
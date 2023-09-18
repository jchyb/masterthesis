OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rzz(2.9601449) q[2],q[1];
cz q[4],q[8];
sdg q[6];
ccx q[0],q[7],q[3];
sdg q[5];
u2(3.3357884,6.1003183) q[9];
s q[3];
id q[6];
cswap q[2],q[9],q[4];
h q[8];
u1(5.7050864) q[1];
cswap q[0],q[5],q[7];
ccx q[5],q[8],q[2];
cswap q[1],q[7],q[0];
crz(2.9814019) q[6],q[4];
cu3(4.1347364,5.7729012,0.79993442) q[9],q[3];
cswap q[7],q[6],q[0];
u3(6.2161997,3.6188009,1.5739043) q[4];
z q[1];
cswap q[2],q[3],q[8];
x q[5];
u2(3.0880043,5.6199084) q[9];
t q[6];
ccx q[7],q[3],q[5];
crz(0.86713363) q[1],q[2];
ch q[0],q[8];
y q[9];
y q[4];
x q[9];
cu3(2.4991836,3.0801389,4.9411818) q[2],q[0];
cswap q[7],q[4],q[8];
cy q[5],q[3];
z q[1];
z q[6];
h q[0];
ccx q[9],q[1],q[2];
u3(5.2914061,3.058993,4.7704734) q[5];
cz q[8],q[3];
h q[6];
cy q[4],q[7];
cswap q[1],q[7],q[2];
cswap q[4],q[0],q[8];
ccx q[6],q[9],q[3];
rz(1.232593) q[5];
s q[0];
swap q[3],q[5];
cswap q[4],q[9],q[6];
swap q[7],q[1];
sdg q[2];
u2(4.5619778,5.6165937) q[8];
ch q[7],q[3];
cswap q[8],q[0],q[1];
cswap q[2],q[5],q[6];
s q[4];
s q[9];
swap q[9],q[6];
ccx q[0],q[1],q[5];
s q[7];
ccx q[8],q[4],q[3];
t q[2];
cu1(3.8802399) q[6],q[3];
cu3(2.1828294,6.1635316,3.6001094) q[8],q[5];
sdg q[0];
cu3(0.14503399,1.3583501,6.2203896) q[4],q[2];
cu3(3.2727611,1.6561946,6.2690468) q[7],q[1];
u1(2.8833312) q[9];
s q[8];
rzz(4.9949641) q[0],q[7];
cswap q[6],q[1],q[4];
t q[5];
tdg q[2];
t q[3];
u2(2.0682543,5.2093504) q[9];
cy q[3],q[8];
u3(0.93008451,5.3237935,4.6028194) q[2];
cy q[4],q[5];
ccx q[6],q[9],q[7];
u1(0.8473122) q[1];
sdg q[0];
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
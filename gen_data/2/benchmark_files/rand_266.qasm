OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
swap q[9],q[5];
cz q[8],q[4];
s q[6];
u3(6.0543088,3.3664664,0.56906124) q[3];
y q[0];
u1(0.65518185) q[1];
rz(3.3370265) q[2];
u3(2.7019008,5.2618512,2.2501414) q[7];
rzz(0.22153556) q[1],q[2];
ccx q[3],q[4],q[9];
z q[7];
h q[0];
cu1(4.4655865) q[6],q[8];
z q[5];
u3(2.1617807,1.2697178,4.3427078) q[3];
ry(4.0942392) q[2];
cz q[4],q[5];
ch q[1],q[9];
rzz(1.9410916) q[8],q[0];
cu3(3.5558784,2.8035295,2.6833022) q[7],q[6];
cswap q[5],q[1],q[0];
cswap q[4],q[2],q[3];
cu1(1.7889731) q[7],q[8];
x q[6];
h q[9];
ch q[9],q[0];
rzz(0.99518498) q[1],q[4];
ch q[5],q[7];
y q[2];
cy q[3],q[8];
z q[6];
ch q[8],q[3];
ch q[0],q[7];
rzz(3.0318353) q[2],q[1];
ccx q[5],q[9],q[4];
u2(5.9428995,4.5761979) q[6];
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
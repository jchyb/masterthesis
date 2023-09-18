OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cu1(6.2431024) q[2],q[6];
x q[1];
cswap q[8],q[7],q[0];
ccx q[5],q[9],q[4];
rz(3.5230439) q[3];
cy q[0],q[8];
ccx q[7],q[6],q[1];
u1(2.7622251) q[4];
cz q[9],q[2];
cx q[3],q[5];
cu3(2.5170701,0.062949863,4.8944977) q[8],q[3];
x q[5];
cz q[4],q[9];
x q[6];
ry(4.014052) q[7];
y q[2];
ry(3.0380124) q[1];
rx(5.6379296) q[0];
crz(6.2207808) q[9],q[1];
cswap q[5],q[4],q[6];
rzz(3.634033) q[0],q[2];
cu1(0.81570192) q[3],q[8];
rz(3.3191704) q[7];
cswap q[9],q[2],q[3];
ccx q[5],q[4],q[7];
rzz(3.0380432) q[6],q[0];
cy q[1],q[8];
ry(5.6196014) q[2];
cswap q[1],q[4],q[6];
cu1(4.1733989) q[0],q[9];
u3(0.1163147,5.6602391,2.4817811) q[8];
cswap q[7],q[5],q[3];
cu3(0.059248189,0.84724631,2.363655) q[3],q[4];
crz(5.8063898) q[8],q[5];
cz q[9],q[7];
cswap q[1],q[2],q[6];
y q[0];
cu1(3.8411185) q[9],q[7];
ccx q[1],q[2],q[5];
ccx q[6],q[4],q[0];
rz(2.6917441) q[3];
u3(3.5582202,1.0319621,4.7812748) q[8];
ccx q[8],q[0],q[7];
cswap q[9],q[1],q[3];
ccx q[4],q[5],q[6];
u2(5.3208418,1.794195) q[2];
u2(0.30187477,4.4721925) q[1];
h q[5];
s q[3];
cu3(2.7812234,2.5192769,2.9174015) q[2],q[6];
ccx q[9],q[0],q[4];
rzz(4.0611528) q[8],q[7];
ry(2.1117471) q[4];
swap q[9],q[7];
crz(1.7906769) q[6],q[1];
ccx q[5],q[2],q[3];
cu3(5.4830445,2.5347455,0.40696227) q[8],q[0];
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
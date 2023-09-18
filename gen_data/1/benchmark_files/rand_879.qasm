OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[6],q[0],q[4];
s q[9];
x q[1];
t q[7];
s q[2];
crz(3.2473717) q[5],q[3];
u2(2.7818562,5.3204532) q[8];
swap q[1],q[2];
cx q[5],q[7];
cswap q[0],q[6],q[8];
u3(4.2732227,6.0771523,3.0703826) q[4];
x q[9];
ry(0.39967773) q[3];
cu1(1.3853037) q[1],q[9];
tdg q[4];
rx(0.64815889) q[6];
ccx q[0],q[2],q[5];
ch q[3],q[7];
sdg q[8];
z q[1];
cz q[3],q[8];
ccx q[7],q[9],q[4];
rx(4.7329503) q[2];
h q[0];
cu1(0.31479108) q[5],q[6];
cswap q[3],q[0],q[9];
cz q[5],q[4];
rzz(0.47007187) q[7],q[1];
cz q[8],q[6];
rx(0.76597722) q[2];
cz q[1],q[0];
ccx q[2],q[6],q[8];
rzz(1.1300644) q[5],q[3];
ccx q[4],q[7],q[9];
cz q[9],q[0];
crz(4.1471859) q[3],q[1];
cswap q[5],q[7],q[8];
rx(4.572563) q[2];
x q[6];
u2(2.5556245,3.5933215) q[4];
swap q[5],q[6];
id q[0];
cy q[7],q[9];
swap q[8],q[1];
cu1(6.1902302) q[3],q[2];
z q[4];
cswap q[6],q[9],q[0];
cswap q[4],q[7],q[2];
cswap q[8],q[3],q[5];
x q[1];
u3(4.8032129,3.4034275,5.8183551) q[3];
ch q[4],q[0];
rzz(3.943462) q[9],q[1];
swap q[6],q[7];
ccx q[8],q[5],q[2];
z q[2];
t q[9];
crz(4.152441) q[4],q[6];
swap q[7],q[5];
cy q[3],q[1];
cu1(1.0866758) q[8],q[0];
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
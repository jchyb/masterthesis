OPENQASM 2.0;
include "qelib1.inc";
qreg q[9];
creg c[9];
cswap q[2],q[4],q[7];
ch q[8],q[6];
ch q[5],q[3];
cy q[0],q[1];
cz q[1],q[3];
cy q[7],q[5];
u2(3.0299446,1.4963236) q[2];
cswap q[8],q[0],q[6];
u1(0.074569823) q[4];
rzz(3.216122) q[7],q[5];
cswap q[6],q[3],q[8];
ccx q[4],q[0],q[2];
sdg q[1];
cu3(1.4078422,1.5277305,0.29801522) q[1],q[8];
u2(2.1460779,3.6094187) q[3];
ccx q[5],q[2],q[4];
cswap q[7],q[6],q[0];
rz(5.1528297) q[4];
s q[6];
h q[7];
s q[2];
id q[1];
t q[8];
sdg q[0];
h q[5];
sdg q[3];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];
measure q[8] -> c[8];
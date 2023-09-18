OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[5],q[9],q[2];
cu3(2.5587396,4.923908,2.8986649) q[6],q[1];
cz q[3],q[0];
cz q[7],q[4];
tdg q[8];
cswap q[0],q[5],q[6];
t q[4];
swap q[2],q[9];
swap q[1],q[8];
tdg q[3];
u1(0.3444346) q[7];
s q[2];
x q[1];
ccx q[3],q[0],q[6];
ch q[5],q[9];
ccx q[7],q[4],q[8];
u1(2.8439443) q[6];
cswap q[5],q[4],q[2];
tdg q[3];
cswap q[0],q[8],q[9];
y q[1];
s q[7];
ch q[5],q[8];
rz(0.2463037) q[0];
cswap q[3],q[9],q[1];
crz(3.3592944) q[4],q[2];
cy q[7],q[6];
y q[0];
ccx q[4],q[2],q[5];
cswap q[1],q[9],q[3];
cswap q[6],q[7],q[8];
cu1(4.3574412) q[6],q[0];
tdg q[4];
cswap q[9],q[8],q[3];
cu1(4.6709626) q[1],q[2];
ch q[5],q[7];
u2(2.9413518,1.9192002) q[4];
cz q[2],q[8];
s q[7];
rzz(2.333045) q[9],q[1];
ch q[5],q[6];
cz q[0],q[3];
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
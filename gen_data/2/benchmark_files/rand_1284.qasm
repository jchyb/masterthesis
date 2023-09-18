OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cx q[0],q[4];
ccx q[6],q[9],q[1];
ccx q[3],q[7],q[5];
ry(1.0625804) q[8];
rx(6.2517755) q[2];
z q[4];
ccx q[2],q[1],q[0];
cswap q[5],q[3],q[7];
t q[8];
cy q[6],q[9];
ccx q[0],q[9],q[2];
rz(4.0102607) q[8];
cu3(1.222594,5.1371066,3.8868897) q[3],q[4];
u2(2.0959204,0.70749864) q[6];
cswap q[7],q[5],q[1];
ch q[3],q[5];
rx(2.2312622) q[2];
u1(5.3771358) q[4];
cu1(3.1152167) q[9],q[1];
cy q[7],q[6];
crz(0.51296962) q[8],q[0];
x q[1];
cu1(1.0309972) q[4],q[5];
s q[9];
y q[8];
x q[7];
cu1(5.8173336) q[3],q[2];
cy q[6],q[0];
cswap q[5],q[6],q[3];
ccx q[0],q[2],q[1];
ccx q[4],q[9],q[7];
s q[8];
ccx q[8],q[7],q[0];
id q[9];
ccx q[2],q[5],q[4];
rzz(0.56831402) q[1],q[3];
rz(3.8013529) q[6];
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
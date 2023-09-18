OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
sdg q[9];
x q[5];
sdg q[3];
ch q[7],q[2];
h q[0];
cswap q[8],q[1],q[6];
u2(0.51241352,5.8834821) q[4];
h q[2];
cswap q[9],q[7],q[1];
cz q[5],q[4];
rz(3.1872791) q[8];
ry(0.61639376) q[3];
ch q[0],q[6];
cx q[4],q[6];
cy q[3],q[1];
tdg q[2];
s q[8];
ccx q[5],q[0],q[9];
tdg q[7];
u1(5.4981412) q[0];
ccx q[9],q[1],q[6];
s q[8];
sdg q[5];
ry(2.3058449) q[7];
u1(1.1399154) q[3];
swap q[4],q[2];
rzz(0.15905873) q[2],q[7];
ccx q[8],q[0],q[1];
ccx q[3],q[4],q[5];
cu3(5.4031977,5.1009923,5.8242274) q[6],q[9];
rz(3.3461029) q[1];
cswap q[3],q[8],q[0];
cswap q[6],q[7],q[4];
id q[9];
ch q[2],q[5];
rz(2.441092) q[9];
rzz(5.4351582) q[4],q[8];
rz(2.6450428) q[3];
x q[0];
cswap q[6],q[1],q[7];
h q[2];
t q[5];
cswap q[2],q[1],q[3];
cswap q[9],q[0],q[5];
u2(4.7449414,5.9197392) q[4];
ccx q[8],q[6],q[7];
cswap q[3],q[7],q[4];
ccx q[5],q[2],q[1];
cx q[0],q[6];
tdg q[9];
u2(0.58180899,2.6076627) q[8];
z q[5];
ccx q[6],q[1],q[2];
cz q[3],q[8];
u3(2.2251223,4.0604653,5.6628576) q[0];
crz(3.9198433) q[7],q[4];
x q[9];
z q[4];
rzz(5.7694806) q[3],q[8];
rzz(2.3561463) q[1],q[6];
cu1(6.0355794) q[2],q[9];
rzz(5.9707507) q[5],q[7];
u3(2.8181962,1.6741914,1.568794) q[0];
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
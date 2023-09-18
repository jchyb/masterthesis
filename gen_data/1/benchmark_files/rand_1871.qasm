OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ry(1.3202499) q[5];
cy q[3],q[9];
ccx q[0],q[8],q[7];
ccx q[4],q[1],q[6];
x q[2];
ccx q[8],q[4],q[6];
ccx q[0],q[5],q[9];
s q[3];
ry(2.1084942) q[1];
tdg q[7];
sdg q[2];
cswap q[3],q[7],q[9];
u1(4.1037776) q[8];
ccx q[6],q[5],q[2];
rz(4.2357398) q[4];
y q[1];
u2(1.8423985,0.82927837) q[0];
cz q[1],q[7];
cu1(1.1472244) q[0],q[5];
cz q[6],q[8];
id q[3];
x q[9];
h q[4];
id q[2];
ccx q[8],q[0],q[5];
ch q[1],q[4];
cy q[9],q[7];
cswap q[6],q[2],q[3];
cu1(1.943751) q[7],q[6];
u3(4.7993795,1.1924933,5.280569) q[9];
crz(4.3823352) q[2],q[5];
crz(2.1865357) q[8],q[4];
tdg q[1];
cu1(3.8553461) q[0],q[3];
cswap q[1],q[5],q[4];
rz(3.6726356) q[0];
id q[3];
swap q[9],q[2];
crz(3.5898253) q[8],q[6];
s q[7];
h q[1];
ccx q[6],q[9],q[5];
z q[4];
h q[0];
cswap q[8],q[3],q[7];
u3(5.4548835,1.5411701,1.7116298) q[2];
cswap q[7],q[4],q[0];
tdg q[5];
t q[9];
x q[1];
s q[2];
tdg q[6];
t q[3];
h q[8];
cswap q[1],q[2],q[5];
cu1(4.0446814) q[9],q[4];
rzz(0.8761562) q[3],q[0];
rzz(3.9446625) q[6],q[7];
u3(5.0130474,4.7161949,5.3861437) q[8];
rx(5.8737968) q[4];
ccx q[9],q[3],q[5];
crz(2.8100141) q[1],q[2];
ccx q[8],q[0],q[6];
h q[7];
cswap q[5],q[4],q[8];
h q[1];
cy q[2],q[0];
ccx q[9],q[7],q[3];
u2(0.074970594,2.8178657) q[6];
y q[8];
ch q[5],q[0];
tdg q[1];
u2(5.6476535,1.2360145) q[4];
cu3(2.0376764,4.9848244,4.3628595) q[7],q[6];
y q[2];
ch q[9],q[3];
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
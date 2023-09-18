OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[2],q[8],q[1];
cswap q[9],q[6],q[4];
s q[7];
cswap q[0],q[3],q[5];
u1(4.5157945) q[6];
h q[4];
ccx q[7],q[9],q[3];
ccx q[2],q[0],q[5];
crz(5.5225503) q[8],q[1];
u2(0.43962537,1.9259146) q[6];
cswap q[0],q[1],q[5];
rz(3.4833363) q[2];
u3(2.6637741,4.3199953,2.3976623) q[4];
ccx q[7],q[8],q[9];
z q[3];
y q[5];
ccx q[8],q[4],q[1];
ccx q[7],q[2],q[3];
ccx q[0],q[9],q[6];
s q[3];
x q[8];
ccx q[0],q[4],q[9];
s q[1];
cz q[5],q[2];
ry(2.9314215) q[6];
u1(5.7125272) q[7];
crz(6.0108025) q[4],q[2];
rx(5.4509715) q[8];
cu1(4.7791799) q[7],q[0];
u1(1.655214) q[3];
cswap q[6],q[5],q[1];
ry(4.241158) q[9];
swap q[7],q[8];
ch q[5],q[0];
cu3(3.635198,6.2086982,3.0979619) q[2],q[3];
cswap q[4],q[9],q[6];
h q[1];
swap q[8],q[0];
rzz(3.224769) q[5],q[6];
t q[2];
crz(4.2104296) q[9],q[3];
ry(3.0618224) q[4];
cx q[7],q[1];
ccx q[0],q[3],q[9];
x q[7];
tdg q[8];
rzz(4.3663966) q[2],q[5];
rzz(4.6714653) q[1],q[4];
z q[6];
ry(3.7469657) q[7];
s q[8];
t q[0];
h q[4];
cswap q[2],q[5],q[1];
ccx q[3],q[6],q[9];
y q[6];
cswap q[7],q[1],q[4];
u1(3.4875902) q[2];
ch q[5],q[0];
swap q[9],q[3];
s q[8];
swap q[9],q[1];
crz(3.6515893) q[5],q[2];
cx q[0],q[3];
swap q[7],q[8];
t q[6];
rz(0.58933905) q[4];
ccx q[5],q[9],q[0];
cy q[1],q[8];
sdg q[4];
ccx q[6],q[3],q[2];
x q[7];
x q[9];
ccx q[0],q[3],q[7];
ry(3.3700666) q[2];
crz(5.1374136) q[5],q[4];
ch q[6],q[1];
id q[8];
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
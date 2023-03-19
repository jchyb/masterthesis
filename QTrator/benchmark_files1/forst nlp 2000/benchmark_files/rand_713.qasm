OPENQASM 2.0;
include "qelib1.inc";
qreg q[13];
creg c[13];
cswap q[5],q[1],q[12];
cu1(4.3407639) q[3],q[10];
cswap q[8],q[4],q[6];
rzz(5.5704157) q[2],q[7];
cswap q[9],q[11],q[0];
cswap q[3],q[1],q[10];
sdg q[0];
cswap q[9],q[11],q[12];
x q[6];
cswap q[2],q[8],q[5];
cu3(1.7788772,1.5216999,0.209642) q[7],q[4];
ccx q[1],q[4],q[8];
cswap q[0],q[9],q[5];
crz(1.115823) q[10],q[12];
rx(2.556569) q[3];
cu3(2.6398155,2.2092497,5.7871002) q[11],q[6];
rz(4.4118334) q[7];
rx(3.9161331) q[2];
cswap q[5],q[9],q[4];
crz(4.6169602) q[1],q[11];
cx q[12],q[2];
cy q[10],q[3];
ccx q[6],q[0],q[7];
h q[8];
ccx q[6],q[2],q[10];
id q[7];
cswap q[8],q[4],q[11];
cz q[9],q[0];
id q[3];
ccx q[1],q[5],q[12];
ch q[7],q[4];
cu3(1.1709946,0.77978177,2.682324) q[8],q[10];
ccx q[6],q[5],q[12];
cu1(6.0813185) q[2],q[9];
crz(4.5307098) q[11],q[0];
y q[3];
rz(2.6672918) q[1];
id q[8];
rz(4.9477672) q[2];
cswap q[12],q[10],q[11];
y q[0];
ccx q[3],q[4],q[5];
ccx q[6],q[1],q[9];
u1(3.0730794) q[7];
h q[5];
cx q[12],q[8];
y q[10];
swap q[9],q[3];
s q[11];
ccx q[4],q[1],q[2];
cz q[6],q[0];
x q[7];
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
measure q[10] -> c[10];
measure q[11] -> c[11];
measure q[12] -> c[12];

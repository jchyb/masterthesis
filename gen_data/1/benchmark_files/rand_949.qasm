OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
crz(5.3956) q[1],q[4];
cswap q[8],q[0],q[2];
cx q[7],q[5];
cz q[3],q[9];
t q[6];
crz(1.0051164) q[8],q[6];
swap q[2],q[0];
cz q[9],q[5];
cswap q[3],q[4],q[7];
s q[1];
ccx q[4],q[7],q[6];
x q[9];
swap q[8],q[1];
cswap q[0],q[5],q[2];
u2(5.852547,1.3558425) q[3];
cu1(5.9714296) q[9],q[6];
ccx q[7],q[0],q[5];
rx(2.8918004) q[4];
ccx q[8],q[2],q[1];
ry(2.9132689) q[3];
ccx q[4],q[6],q[3];
ccx q[1],q[2],q[5];
ry(3.4643963) q[0];
sdg q[9];
id q[8];
rx(2.1222667) q[7];
cz q[8],q[5];
cswap q[0],q[6],q[7];
cswap q[9],q[3],q[2];
cx q[1],q[4];
ccx q[7],q[6],q[5];
cx q[0],q[9];
u1(4.2008221) q[8];
cu1(3.3220277) q[2],q[1];
tdg q[3];
x q[4];
cswap q[3],q[5],q[2];
x q[0];
cu1(3.6910698) q[9],q[4];
t q[1];
cswap q[8],q[7],q[6];
s q[3];
h q[9];
ch q[6],q[0];
cz q[2],q[5];
cu3(1.1151608,5.1236765,2.9469172) q[8],q[1];
cy q[4],q[7];
cswap q[4],q[8],q[7];
ccx q[1],q[5],q[0];
ccx q[3],q[9],q[2];
rz(0.09712242) q[6];
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
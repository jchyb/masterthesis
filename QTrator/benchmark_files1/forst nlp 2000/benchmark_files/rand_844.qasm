OPENQASM 2.0;
include "qelib1.inc";
qreg q[13];
creg c[13];
z q[6];
rx(4.08865) q[4];
cswap q[3],q[12],q[2];
rzz(5.6424173) q[8],q[0];
ch q[9],q[5];
tdg q[11];
cswap q[10],q[7],q[1];
cz q[3],q[8];
swap q[12],q[1];
rz(1.5260527) q[5];
cswap q[4],q[7],q[0];
ccx q[6],q[11],q[10];
cx q[2],q[9];
t q[4];
swap q[9],q[12];
tdg q[5];
ccx q[1],q[11],q[3];
ry(4.1678274) q[2];
cswap q[6],q[7],q[8];
rzz(5.2998317) q[10],q[0];
cswap q[2],q[10],q[8];
ccx q[4],q[5],q[11];
cswap q[9],q[0],q[1];
ch q[3],q[12];
cu3(0.45079317,2.4855639,0.70281742) q[6],q[7];
cswap q[7],q[1],q[12];
ch q[6],q[5];
id q[2];
cz q[11],q[4];
tdg q[10];
ccx q[9],q[3],q[0];
x q[8];
swap q[12],q[0];
u1(4.8448077) q[11];
h q[8];
ccx q[6],q[9],q[3];
cswap q[10],q[7],q[1];
id q[5];
rz(5.7832126) q[2];
rx(0.042971239) q[4];
cswap q[7],q[0],q[8];
cz q[6],q[10];
cy q[9],q[4];
rz(5.5542558) q[3];
cswap q[2],q[1],q[12];
rx(3.7509945) q[5];
s q[11];
ccx q[7],q[6],q[9];
cswap q[3],q[1],q[2];
x q[11];
z q[8];
rx(5.8587913) q[5];
h q[10];
cu3(5.758521,3.1727554,5.3250558) q[0],q[4];
u3(1.8919859,5.0404337,3.594654) q[12];
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

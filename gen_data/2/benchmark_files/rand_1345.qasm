OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cu1(3.3573227) q[8],q[9];
y q[1];
rx(5.9082189) q[0];
cswap q[6],q[5],q[4];
y q[2];
rx(1.9957265) q[3];
tdg q[7];
y q[9];
ccx q[4],q[6],q[2];
ccx q[3],q[1],q[8];
sdg q[7];
cu3(6.2814914,1.4633516,1.043835) q[5],q[0];
u3(4.2491452,5.0161115,0.46245566) q[0];
ch q[8],q[9];
cx q[7],q[2];
cu3(0.66839129,2.6654518,1.4440947) q[3],q[4];
ccx q[5],q[1],q[6];
rx(1.6692166) q[2];
cz q[3],q[0];
rz(5.3609409) q[1];
swap q[5],q[4];
ch q[6],q[7];
t q[8];
h q[9];
u3(2.3153971,5.1289116,2.4140702) q[5];
ccx q[0],q[2],q[8];
ccx q[9],q[7],q[6];
y q[3];
x q[1];
u3(3.953026,1.9052558,3.1992736) q[4];
id q[9];
cswap q[2],q[3],q[5];
tdg q[4];
ccx q[8],q[6],q[1];
swap q[7],q[0];
ry(3.2881911) q[6];
ccx q[5],q[3],q[1];
u3(0.4653709,0.66129381,4.4320895) q[8];
cswap q[4],q[2],q[7];
x q[0];
u1(5.7346026) q[9];
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
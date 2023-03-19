OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
creg c[7];
cz q[5],q[6];
rzz(0.38372772) q[1],q[3];
ccx q[2],q[0],q[4];
z q[1];
sdg q[5];
ccx q[0],q[3],q[4];
cu1(5.7646949) q[2],q[6];
sdg q[6];
crz(0.68916808) q[2],q[5];
cu1(4.4127288) q[1],q[3];
t q[0];
id q[4];
swap q[1],q[2];
cx q[4],q[5];
u2(6.2231093,3.4789078) q[0];
rz(3.4447621) q[3];
y q[6];
sdg q[1];
cz q[4],q[2];
ccx q[6],q[0],q[3];
rz(6.183835) q[5];
cswap q[4],q[2],q[1];
cswap q[5],q[3],q[0];
rx(5.4903399) q[6];
crz(3.399947) q[5],q[6];
t q[2];
cu3(5.7726497,0.47536437,2.0558767) q[1],q[0];
u2(3.2533414,2.0845641) q[3];
u1(3.324309) q[4];
z q[5];
swap q[0],q[2];
ccx q[3],q[6],q[4];
z q[1];
ch q[0],q[6];
swap q[4],q[3];
cu1(5.2578094) q[1],q[2];
x q[5];
id q[3];
u3(3.4323171,2.6084531,3.39428) q[1];
ccx q[2],q[0],q[4];
rzz(5.7338615) q[5],q[6];
rz(1.4454014) q[4];
cswap q[6],q[1],q[3];
ch q[0],q[2];
x q[5];
swap q[5],q[1];
swap q[3],q[4];
cz q[6],q[0];
id q[2];
ch q[3],q[6];
ccx q[5],q[1],q[0];
z q[2];
z q[4];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];

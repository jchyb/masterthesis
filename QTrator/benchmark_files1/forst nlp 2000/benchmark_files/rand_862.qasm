OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rzz(3.2367559) q[8],q[2];
rz(3.7593499) q[9];
ry(3.6576795) q[5];
rzz(4.0268732) q[6],q[1];
cy q[3],q[7];
cx q[0],q[4];
crz(4.6319791) q[6],q[0];
ccx q[5],q[9],q[4];
s q[1];
ry(6.2283737) q[3];
cswap q[2],q[7],q[8];
ccx q[9],q[2],q[4];
ccx q[7],q[8],q[5];
tdg q[1];
cu3(3.3110341,3.6535794,6.0114223) q[6],q[0];
rz(4.9276616) q[3];
rx(5.6141062) q[8];
cu3(5.6953689,0.79109531,1.2004764) q[1],q[3];
ry(2.3387551) q[6];
swap q[4],q[7];
id q[0];
tdg q[5];
u1(0.77330087) q[2];
ry(3.7389972) q[9];
ccx q[0],q[3],q[2];
cswap q[4],q[6],q[8];
crz(4.9667579) q[5],q[7];
crz(1.02662) q[1],q[9];
u3(1.7574973,2.8882044,1.018836) q[7];
cu1(2.5817389) q[1],q[8];
crz(3.395524) q[2],q[4];
ccx q[0],q[6],q[3];
rx(0.58016294) q[5];
ry(1.4226547) q[9];
u2(2.3234928,1.844165) q[4];
cu1(2.6852125) q[0],q[2];
tdg q[8];
ccx q[7],q[9],q[5];
ccx q[1],q[6],q[3];
cswap q[0],q[5],q[2];
ch q[9],q[6];
cswap q[3],q[4],q[8];
cu3(5.7682154,2.7347339,1.741776) q[7],q[1];
cz q[6],q[8];
ccx q[5],q[4],q[9];
ccx q[3],q[7],q[1];
z q[0];
u3(5.2624316,1.1047984,6.0797709) q[2];
x q[9];
cswap q[3],q[8],q[0];
ccx q[2],q[5],q[4];
cy q[7],q[6];
u3(0.20595413,4.2499768,5.543179) q[1];
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

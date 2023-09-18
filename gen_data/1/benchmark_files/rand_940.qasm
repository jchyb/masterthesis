OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
crz(2.7917804) q[0],q[6];
cu1(6.0319122) q[9],q[3];
crz(4.350199) q[4],q[1];
cu1(2.0981902) q[7],q[8];
u3(0.29223674,5.3365829,4.0251038) q[5];
z q[2];
u2(1.2232867,3.3224542) q[6];
id q[3];
ccx q[8],q[1],q[2];
u1(5.2402831) q[0];
s q[5];
ccx q[7],q[9],q[4];
z q[5];
cx q[3],q[1];
x q[2];
x q[9];
cswap q[8],q[6],q[7];
cu1(6.1394062) q[4],q[0];
ccx q[8],q[2],q[7];
cswap q[9],q[0],q[4];
cu1(1.8790582) q[5],q[6];
cu3(0.097509638,5.489204,2.7982344) q[1],q[3];
ccx q[4],q[0],q[1];
ry(3.9977027) q[6];
crz(2.8042512) q[2],q[5];
cy q[7],q[8];
swap q[3],q[9];
cz q[2],q[4];
cu1(4.7792955) q[1],q[8];
rz(1.5275238) q[5];
u3(4.3298372,1.7741526,1.4421828) q[6];
cx q[3],q[9];
cu3(4.5748564,2.4846873,2.5568646) q[0],q[7];
u2(3.3514032,4.2948988) q[8];
s q[3];
rzz(1.0911941) q[6],q[2];
rzz(2.8416155) q[7],q[9];
ccx q[4],q[5],q[0];
t q[1];
tdg q[8];
rzz(1.5441416) q[0],q[3];
y q[4];
ccx q[1],q[9],q[2];
rx(3.7660118) q[5];
cz q[6],q[7];
cz q[8],q[7];
cswap q[0],q[5],q[1];
cu1(0.1322388) q[9],q[4];
cswap q[3],q[2],q[6];
cz q[0],q[9];
cswap q[1],q[6],q[2];
ccx q[4],q[3],q[5];
cx q[7],q[8];
cu1(4.7494313) q[2],q[3];
rzz(3.1363684) q[4],q[1];
s q[8];
crz(1.2027293) q[0],q[5];
crz(5.4730358) q[7],q[9];
ry(4.1396697) q[6];
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
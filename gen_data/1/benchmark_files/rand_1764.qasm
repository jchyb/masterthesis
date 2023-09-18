OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cu1(5.7564355) q[2],q[5];
cswap q[9],q[0],q[7];
cz q[3],q[8];
cswap q[6],q[4],q[1];
t q[3];
z q[8];
ccx q[4],q[9],q[5];
s q[1];
x q[0];
u2(4.414662,3.5569592) q[6];
cz q[7],q[2];
sdg q[2];
ccx q[5],q[0],q[1];
ccx q[6],q[9],q[7];
ccx q[4],q[3],q[8];
cz q[6],q[7];
t q[5];
u3(1.9485598,0.27416483,0.73887662) q[9];
cy q[1],q[8];
tdg q[3];
cswap q[0],q[2],q[4];
cx q[6],q[8];
ccx q[9],q[2],q[7];
ry(0.19390667) q[4];
cy q[5],q[0];
u1(2.547941) q[3];
u3(5.9836627,3.619813,1.9725728) q[1];
swap q[8],q[5];
cswap q[3],q[2],q[1];
swap q[7],q[6];
swap q[0],q[4];
rz(0.098209577) q[9];
ry(1.2035355) q[9];
h q[6];
id q[5];
cswap q[1],q[3],q[2];
u1(5.9884768) q[8];
h q[0];
cx q[7],q[4];
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
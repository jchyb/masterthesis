OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ch q[2],q[5];
ry(4.6541187) q[9];
cswap q[1],q[0],q[7];
id q[3];
y q[8];
cx q[6],q[4];
cu1(4.5180656) q[2],q[1];
ccx q[3],q[4],q[0];
x q[9];
ccx q[7],q[5],q[8];
t q[6];
cy q[1],q[2];
crz(4.9523705) q[7],q[3];
ccx q[0],q[4],q[6];
rz(3.4549905) q[8];
cu1(3.5286556) q[9],q[5];
rz(3.5024036) q[6];
id q[3];
ccx q[5],q[9],q[7];
cswap q[8],q[0],q[4];
h q[1];
z q[2];
y q[2];
rz(2.7631187) q[7];
swap q[5],q[8];
ccx q[9],q[0],q[3];
ccx q[4],q[1],q[6];
swap q[7],q[2];
cswap q[5],q[0],q[8];
s q[4];
u1(3.6236213) q[1];
ccx q[3],q[9],q[6];
cswap q[3],q[2],q[8];
cz q[6],q[4];
cswap q[0],q[7],q[5];
swap q[9],q[1];
cu1(2.0366653) q[4],q[2];
cu1(4.7757622) q[8],q[0];
swap q[1],q[3];
ccx q[5],q[7],q[9];
u1(1.3134808) q[6];
rzz(3.209915) q[6],q[4];
cy q[5],q[1];
ccx q[9],q[2],q[8];
y q[0];
z q[7];
id q[3];
cswap q[4],q[1],q[6];
rzz(0.21464003) q[2],q[7];
ccx q[0],q[8],q[9];
y q[5];
u1(0.20269763) q[3];
ccx q[3],q[6],q[7];
h q[0];
cswap q[9],q[4],q[5];
ry(1.0839176) q[1];
cu3(1.5875281,6.2363079,0.17566714) q[8],q[2];
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
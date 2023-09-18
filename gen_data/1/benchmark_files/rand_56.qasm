OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
swap q[3],q[8];
ccx q[6],q[4],q[2];
rzz(4.5878446) q[7],q[1];
x q[9];
cu3(1.662758,4.8738024,0.54796445) q[5],q[0];
ccx q[8],q[2],q[5];
ccx q[3],q[4],q[6];
u2(5.9239634,1.9233212) q[7];
ch q[9],q[1];
x q[0];
y q[4];
cy q[0],q[7];
rzz(4.2220003) q[5],q[2];
cz q[8],q[1];
cx q[9],q[6];
rz(0.42978216) q[3];
cswap q[9],q[7],q[5];
cz q[3],q[6];
h q[4];
u2(3.3005038,5.9039375) q[8];
cswap q[0],q[1],q[2];
ccx q[3],q[5],q[0];
s q[9];
y q[6];
crz(3.2250817) q[1],q[4];
ccx q[2],q[8],q[7];
crz(1.2230177) q[6],q[2];
id q[0];
u3(3.1284267,2.8743068,3.3288805) q[3];
cswap q[9],q[7],q[4];
cx q[8],q[5];
s q[1];
ch q[0],q[7];
swap q[8],q[3];
cz q[1],q[6];
swap q[9],q[2];
cz q[5],q[4];
cswap q[4],q[3],q[9];
ccx q[6],q[2],q[7];
cswap q[5],q[1],q[8];
ry(2.7307582) q[0];
crz(5.4363018) q[6],q[3];
id q[9];
ccx q[4],q[0],q[5];
swap q[8],q[7];
ch q[2],q[1];
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
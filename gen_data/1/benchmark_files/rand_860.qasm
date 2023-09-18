OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cy q[6],q[2];
rx(3.39584) q[3];
tdg q[8];
cz q[9],q[7];
t q[0];
u1(4.8489254) q[4];
id q[5];
rz(5.9202806) q[1];
z q[7];
z q[9];
ccx q[1],q[0],q[3];
rx(4.0100465) q[2];
ccx q[4],q[5],q[6];
u3(2.9864126,2.8532212,2.740141) q[8];
cswap q[9],q[2],q[3];
cswap q[6],q[4],q[8];
h q[5];
t q[7];
tdg q[0];
t q[1];
id q[1];
rzz(0.84870625) q[3],q[5];
y q[0];
y q[4];
cu1(5.2570057) q[2],q[9];
ch q[7],q[8];
id q[6];
ch q[9],q[2];
ccx q[1],q[4],q[5];
x q[0];
u1(2.4182441) q[7];
y q[6];
rx(4.5909769) q[3];
x q[8];
cswap q[7],q[4],q[0];
cswap q[9],q[1],q[6];
ccx q[2],q[5],q[3];
t q[8];
cu3(0.74166298,2.9611391,2.1909082) q[5],q[0];
ch q[3],q[2];
x q[6];
cu1(3.2325524) q[9],q[4];
rx(0.35351592) q[8];
ry(5.1175162) q[7];
t q[1];
cswap q[5],q[8],q[3];
ccx q[0],q[1],q[7];
crz(3.4692968) q[4],q[9];
z q[2];
z q[6];
cswap q[8],q[7],q[2];
rz(5.3823348) q[5];
t q[1];
crz(3.7740041) q[6],q[0];
y q[4];
h q[9];
rz(1.1216257) q[3];
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
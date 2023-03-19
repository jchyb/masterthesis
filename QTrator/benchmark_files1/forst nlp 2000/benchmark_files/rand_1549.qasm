OPENQASM 2.0;
include "qelib1.inc";
qreg q[11];
creg c[11];
cx q[1],q[4];
x q[9];
ccx q[0],q[7],q[6];
z q[3];
s q[5];
h q[10];
rx(2.9485338) q[2];
u3(4.5095192,4.9331718,2.6317856) q[8];
cswap q[1],q[4],q[10];
rz(3.1771196) q[2];
ch q[6],q[9];
cu3(4.9483035,5.8987338,0.29839478) q[8],q[3];
h q[0];
u2(1.3414243,0.90323491) q[7];
s q[5];
rz(5.4628272) q[10];
ccx q[4],q[1],q[8];
t q[2];
z q[0];
rx(3.3027828) q[5];
cz q[7],q[6];
cz q[9],q[3];
swap q[4],q[3];
ccx q[2],q[10],q[6];
id q[8];
rx(4.9774555) q[1];
cswap q[5],q[7],q[0];
id q[9];
cy q[4],q[0];
cswap q[5],q[10],q[8];
ry(5.3324634) q[6];
swap q[9],q[2];
ccx q[7],q[3],q[1];
ch q[6],q[0];
cswap q[2],q[7],q[8];
t q[1];
ccx q[5],q[10],q[9];
s q[4];
u3(2.5289128,0.20033133,5.2514039) q[3];
sdg q[6];
id q[7];
id q[10];
cu1(2.9565239) q[2],q[4];
cswap q[0],q[3],q[1];
ccx q[9],q[8],q[5];
cu1(2.5310394) q[4],q[8];
y q[0];
id q[1];
ccx q[9],q[5],q[2];
ry(1.8295558) q[6];
cswap q[3],q[10],q[7];
cu1(1.331489) q[10],q[9];
cswap q[5],q[6],q[7];
ch q[1],q[4];
cu3(4.610768,0.79942827,1.6920229) q[2],q[8];
cu1(2.1199805) q[3],q[0];
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

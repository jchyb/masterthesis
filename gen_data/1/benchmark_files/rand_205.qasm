OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[0],q[3],q[6];
rx(2.5744128) q[8];
cu3(4.2854026,5.3099505,2.8520142) q[2],q[4];
cswap q[5],q[7],q[1];
y q[9];
cx q[0],q[5];
cu3(4.9180949,5.595701,1.4873757) q[1],q[8];
swap q[3],q[4];
swap q[9],q[7];
y q[2];
rx(6.089055) q[6];
t q[7];
crz(1.5555034) q[8],q[1];
cswap q[5],q[0],q[3];
ccx q[4],q[6],q[9];
y q[2];
ccx q[5],q[4],q[0];
ccx q[3],q[8],q[7];
rx(4.8970492) q[9];
cz q[2],q[6];
x q[1];
u3(5.1320386,3.2969218,4.5395598) q[6];
crz(0.073380408) q[0],q[3];
cy q[7],q[5];
ccx q[9],q[1],q[4];
rz(4.4002174) q[8];
ry(6.1646858) q[2];
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
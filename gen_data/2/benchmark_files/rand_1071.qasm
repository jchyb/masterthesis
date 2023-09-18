OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
t q[8];
cswap q[7],q[2],q[1];
t q[3];
cswap q[9],q[6],q[5];
cz q[4],q[0];
ccx q[0],q[4],q[6];
u3(0.12523986,1.974706,2.4580148) q[5];
cx q[3],q[9];
ccx q[7],q[1],q[8];
rz(0.51505909) q[2];
cswap q[2],q[3],q[8];
s q[9];
cx q[5],q[6];
tdg q[0];
u2(5.0076058,3.8539) q[7];
rz(0.71132504) q[4];
y q[1];
z q[2];
cu1(5.8001673) q[5],q[7];
swap q[4],q[9];
ccx q[1],q[6],q[8];
y q[3];
u3(4.5755056,0.74942186,2.1673965) q[0];
swap q[9],q[8];
cz q[0],q[2];
cswap q[6],q[1],q[4];
rz(3.0428466) q[7];
rx(3.0313091) q[3];
u1(0.62975408) q[5];
crz(3.7538058) q[5],q[8];
t q[1];
rx(0.4593189) q[2];
crz(5.1960365) q[7],q[3];
ccx q[9],q[6],q[0];
ry(1.0622576) q[4];
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
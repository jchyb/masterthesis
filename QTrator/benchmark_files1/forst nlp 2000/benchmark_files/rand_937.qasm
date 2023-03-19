OPENQASM 2.0;
include "qelib1.inc";
qreg q[9];
creg c[9];
cswap q[8],q[7],q[4];
rz(4.707467) q[3];
crz(3.7061833) q[0],q[6];
z q[2];
z q[5];
x q[1];
swap q[5],q[2];
crz(4.2030685) q[4],q[0];
cu1(2.5064705) q[7],q[3];
cu3(3.4200996,3.275694,5.3797532) q[1],q[8];
t q[6];
rx(4.0737838) q[8];
cx q[6],q[2];
t q[5];
cu1(2.3052796) q[0],q[3];
u1(2.225992) q[7];
cu1(3.9886717) q[4],q[1];
t q[2];
cswap q[1],q[3],q[6];
cy q[0],q[4];
x q[8];
u2(1.1517524,5.2646043) q[7];
y q[5];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];
measure q[8] -> c[8];

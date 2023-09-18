OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cy q[6],q[5];
cswap q[7],q[9],q[2];
ccx q[3],q[0],q[1];
cy q[4],q[8];
rx(2.6617945) q[3];
cswap q[1],q[5],q[8];
u2(0.81129087,1.226175) q[9];
t q[0];
cy q[6],q[4];
u3(0.0003837109,5.7713908,5.6353001) q[2];
y q[7];
ry(4.1980685) q[3];
cswap q[2],q[4],q[8];
cz q[9],q[1];
ccx q[5],q[0],q[6];
x q[7];
ccx q[7],q[4],q[2];
cswap q[5],q[1],q[6];
sdg q[9];
cu1(4.7749993) q[0],q[8];
y q[3];
x q[9];
ry(1.7092479) q[1];
cswap q[5],q[8],q[4];
crz(2.6116728) q[0],q[7];
cz q[3],q[6];
u1(4.529449) q[2];
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
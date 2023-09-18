OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cx q[5],q[8];
ccx q[1],q[3],q[7];
u2(0.79480034,1.4092294) q[6];
cswap q[2],q[9],q[0];
z q[4];
swap q[5],q[1];
ccx q[0],q[4],q[3];
cz q[2],q[9];
cx q[8],q[6];
s q[7];
ccx q[8],q[7],q[5];
y q[6];
cu1(2.6904541) q[0],q[2];
tdg q[4];
swap q[9],q[1];
u2(5.296702,5.3601185) q[3];
rx(6.0379611) q[1];
y q[2];
u1(5.2431573) q[5];
ccx q[4],q[6],q[9];
cswap q[8],q[3],q[7];
ry(4.8332655) q[0];
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
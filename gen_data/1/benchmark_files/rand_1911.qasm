OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
t q[7];
ch q[3],q[9];
u1(1.7358783) q[1];
cu1(5.159758) q[4],q[5];
ccx q[6],q[2],q[8];
x q[0];
ch q[0],q[8];
cswap q[2],q[9],q[4];
sdg q[6];
cz q[5],q[1];
cz q[3],q[7];
swap q[2],q[1];
rzz(1.6005659) q[0],q[5];
ch q[3],q[6];
ccx q[9],q[8],q[4];
u1(2.0408771) q[7];
swap q[1],q[0];
ccx q[3],q[6],q[8];
tdg q[4];
h q[2];
ccx q[9],q[5],q[7];
rz(6.0331034) q[9];
t q[4];
cswap q[5],q[0],q[2];
ch q[1],q[6];
x q[3];
rzz(5.9425112) q[7],q[8];
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
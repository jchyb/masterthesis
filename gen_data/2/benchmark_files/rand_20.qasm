OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[7],q[2],q[6];
cswap q[5],q[0],q[9];
crz(3.1658202) q[4],q[1];
y q[8];
ry(5.2005625) q[3];
cswap q[7],q[2],q[0];
ccx q[6],q[3],q[8];
t q[4];
ccx q[9],q[1],q[5];
cz q[3],q[8];
cy q[4],q[1];
ccx q[0],q[9],q[6];
cx q[5],q[2];
s q[7];
cy q[8],q[0];
cswap q[1],q[6],q[5];
ccx q[9],q[2],q[7];
cu1(0.97253965) q[4],q[3];
cswap q[0],q[2],q[3];
ccx q[4],q[8],q[5];
crz(3.5683951) q[1],q[6];
t q[9];
ry(0.41685728) q[7];
cx q[6],q[7];
cx q[0],q[2];
u2(1.4699159,1.3800869) q[1];
h q[9];
cswap q[4],q[3],q[5];
x q[8];
cz q[1],q[9];
sdg q[7];
crz(4.0393885) q[0],q[3];
t q[5];
cswap q[8],q[4],q[2];
u1(1.0662199) q[6];
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
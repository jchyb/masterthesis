OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rx(3.4954104) q[0];
cu3(4.2379781,5.6343615,5.4058014) q[7],q[3];
cswap q[6],q[5],q[4];
cswap q[9],q[1],q[8];
rx(0.84284658) q[2];
y q[4];
s q[0];
crz(0.59501063) q[6],q[1];
cy q[9],q[3];
y q[7];
cy q[5],q[2];
z q[8];
ccx q[8],q[7],q[0];
swap q[9],q[5];
ch q[3],q[1];
ccx q[6],q[2],q[4];
ccx q[3],q[6],q[2];
ch q[1],q[0];
cy q[8],q[7];
y q[4];
cu1(3.3317995) q[5],q[9];
tdg q[9];
cswap q[4],q[6],q[3];
swap q[8],q[5];
sdg q[2];
ccx q[0],q[1],q[7];
cx q[0],q[6];
x q[7];
ccx q[5],q[2],q[9];
h q[4];
h q[3];
cu1(2.5075158) q[8],q[1];
cswap q[9],q[2],q[4];
ccx q[0],q[1],q[8];
ch q[6],q[7];
crz(0.67264772) q[3],q[5];
ccx q[0],q[5],q[2];
ccx q[1],q[8],q[4];
swap q[3],q[6];
cz q[9],q[7];
h q[8];
z q[9];
cu1(3.9388087) q[3],q[1];
swap q[2],q[7];
rx(5.6343192) q[6];
cswap q[5],q[4],q[0];
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

OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[5],q[7],q[9];
ccx q[4],q[6],q[1];
id q[8];
s q[3];
cz q[0],q[2];
cswap q[6],q[8],q[2];
h q[3];
x q[1];
ccx q[9],q[5],q[4];
h q[0];
ry(5.386724) q[7];
cz q[9],q[1];
rzz(6.193702) q[8],q[7];
u2(3.3088611,5.5666288) q[5];
y q[4];
cswap q[2],q[6],q[0];
tdg q[3];
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
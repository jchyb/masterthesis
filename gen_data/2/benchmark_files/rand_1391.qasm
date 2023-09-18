OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cz q[9],q[3];
rzz(1.5785813) q[1],q[0];
cswap q[4],q[6],q[7];
ry(1.2418477) q[8];
u3(6.1526821,0.54617737,4.4739475) q[5];
y q[2];
ccx q[4],q[0],q[2];
cx q[1],q[9];
z q[8];
cswap q[3],q[5],q[7];
h q[6];
cy q[4],q[8];
rzz(5.3755071) q[9],q[5];
ccx q[0],q[7],q[2];
ccx q[1],q[6],q[3];
rx(3.9445722) q[5];
z q[7];
ch q[6],q[2];
id q[1];
cz q[4],q[9];
rx(5.6485511) q[3];
crz(0.14865185) q[0],q[8];
ccx q[0],q[8],q[1];
sdg q[9];
swap q[7],q[5];
ccx q[4],q[6],q[2];
rz(4.1105317) q[3];
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
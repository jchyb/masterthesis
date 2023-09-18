OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[0],q[4],q[2];
ccx q[7],q[5],q[9];
h q[1];
cswap q[6],q[8],q[3];
cy q[3],q[1];
cy q[9],q[8];
cy q[5],q[7];
tdg q[4];
cswap q[2],q[0],q[6];
t q[7];
ccx q[6],q[8],q[9];
cu3(0.6117091,0.092898692,1.7422944) q[1],q[4];
ccx q[3],q[2],q[5];
tdg q[0];
y q[8];
swap q[7],q[3];
y q[0];
t q[9];
s q[6];
rzz(5.8495505) q[4],q[5];
z q[1];
tdg q[2];
cu3(6.2615069,4.3363849,0.13463746) q[7],q[5];
rz(2.8968431) q[8];
t q[1];
t q[0];
cx q[2],q[6];
ccx q[9],q[4],q[3];
u3(5.6159256,0.80611135,4.3330503) q[8];
cu1(5.8996786) q[7],q[0];
cswap q[2],q[3],q[9];
id q[6];
y q[4];
swap q[1],q[5];
s q[0];
ccx q[5],q[1],q[4];
cswap q[8],q[2],q[3];
u3(3.2387499,4.8454106,4.9183868) q[6];
t q[7];
z q[9];
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
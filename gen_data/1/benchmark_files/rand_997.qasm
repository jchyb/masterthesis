OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
z q[6];
rx(2.4237878) q[9];
cswap q[3],q[0],q[2];
swap q[8],q[5];
ccx q[1],q[7],q[4];
cswap q[4],q[8],q[7];
ccx q[3],q[9],q[0];
rz(4.7262397) q[5];
cswap q[6],q[2],q[1];
swap q[8],q[9];
ccx q[5],q[0],q[6];
h q[2];
swap q[3],q[7];
cy q[4],q[1];
ccx q[2],q[8],q[1];
ccx q[6],q[9],q[7];
tdg q[5];
z q[3];
cx q[4],q[0];
ccx q[5],q[1],q[6];
crz(3.9778804) q[4],q[0];
sdg q[2];
cswap q[9],q[7],q[3];
u3(2.5320847,3.6089862,5.2859171) q[8];
cswap q[6],q[1],q[0];
cy q[7],q[3];
crz(3.4681999) q[2],q[9];
sdg q[4];
swap q[8],q[5];
y q[5];
ccx q[0],q[2],q[3];
t q[6];
y q[8];
ry(5.5945395) q[9];
y q[1];
crz(3.7873432) q[4],q[7];
ccx q[1],q[3],q[9];
s q[8];
t q[4];
ccx q[0],q[6],q[5];
sdg q[2];
s q[7];
cz q[2],q[6];
cswap q[3],q[9],q[5];
cswap q[4],q[7],q[1];
cx q[8],q[0];
x q[6];
cswap q[4],q[7],q[3];
u2(0.2750386,1.5962024) q[2];
cx q[5],q[0];
cx q[8],q[1];
h q[9];
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
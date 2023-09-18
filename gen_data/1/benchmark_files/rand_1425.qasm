OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
swap q[5],q[6];
cswap q[8],q[0],q[3];
u2(5.7993517,5.6512121) q[7];
crz(2.5203644) q[4],q[2];
cx q[1],q[9];
cswap q[9],q[3],q[7];
cu1(1.2591888) q[4],q[2];
y q[0];
cswap q[8],q[6],q[1];
rx(0.43423782) q[5];
cswap q[5],q[4],q[2];
tdg q[9];
z q[1];
u2(2.5643261,5.0132477) q[6];
cswap q[0],q[7],q[8];
h q[3];
ccx q[3],q[0],q[1];
cswap q[2],q[6],q[9];
cx q[7],q[5];
crz(1.7613151) q[4],q[8];
z q[4];
u2(4.9613702,1.8752519) q[8];
cx q[3],q[6];
u1(2.4044667) q[5];
s q[9];
ccx q[1],q[2],q[7];
x q[0];
t q[0];
y q[2];
rzz(4.7643348) q[7],q[1];
ccx q[4],q[6],q[5];
rz(4.8549867) q[9];
x q[8];
tdg q[3];
cswap q[7],q[9],q[3];
ccx q[0],q[1],q[8];
cswap q[6],q[5],q[2];
h q[4];
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
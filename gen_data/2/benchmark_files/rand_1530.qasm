OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
y q[9];
cx q[5],q[1];
ccx q[7],q[2],q[4];
t q[8];
ry(3.2396547) q[3];
u1(5.0941635) q[0];
h q[6];
tdg q[7];
u1(2.8212223) q[3];
cy q[8],q[4];
cswap q[9],q[1],q[2];
ccx q[6],q[0],q[5];
s q[8];
cswap q[9],q[4],q[2];
ccx q[1],q[7],q[5];
cswap q[6],q[3],q[0];
swap q[1],q[8];
cswap q[3],q[6],q[5];
u3(3.0322649,4.5468238,4.4231845) q[9];
u2(5.2219438,1.4880229) q[2];
cswap q[4],q[7],q[0];
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
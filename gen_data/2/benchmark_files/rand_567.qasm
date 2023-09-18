OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cx q[6],q[3];
x q[7];
cu1(4.9449472) q[5],q[8];
cswap q[0],q[1],q[9];
h q[2];
tdg q[4];
u1(1.5525917) q[5];
cy q[6],q[9];
ch q[0],q[4];
crz(4.7737179) q[1],q[2];
crz(4.8152332) q[7],q[3];
ry(4.0452669) q[8];
cx q[7],q[3];
crz(5.2104277) q[6],q[4];
u2(3.4212792,5.1866876) q[5];
swap q[0],q[1];
z q[2];
rx(0.80555545) q[8];
rz(3.4957384) q[9];
cu3(4.3870813,3.093222,2.0080451) q[8],q[4];
crz(0.7627) q[5],q[2];
u2(5.2128368,2.6376377) q[7];
sdg q[9];
cswap q[6],q[1],q[3];
tdg q[0];
cswap q[3],q[2],q[1];
cswap q[4],q[7],q[8];
id q[9];
cx q[0],q[6];
ry(2.5751367) q[5];
sdg q[8];
cz q[7],q[4];
cx q[1],q[3];
cu3(3.6945727,6.2603028,6.1787078) q[2],q[6];
ccx q[9],q[5],q[0];
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
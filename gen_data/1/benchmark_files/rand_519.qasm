OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[1],q[4],q[7];
u2(4.9137171,5.3304346) q[3];
cswap q[8],q[2],q[0];
ry(3.8472608) q[6];
crz(4.0688502) q[5],q[9];
z q[2];
sdg q[6];
ccx q[5],q[4],q[0];
ch q[8],q[3];
ch q[9],q[1];
u2(2.9465395,3.0894913) q[7];
ch q[4],q[1];
cx q[9],q[6];
cu3(1.3975804,2.3815657,5.4410482) q[5],q[3];
h q[2];
ccx q[8],q[7],q[0];
cswap q[5],q[1],q[6];
ccx q[4],q[0],q[2];
cx q[8],q[3];
t q[7];
sdg q[9];
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
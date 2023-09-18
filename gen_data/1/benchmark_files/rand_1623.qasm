OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
swap q[2],q[3];
cswap q[5],q[7],q[0];
swap q[4],q[1];
cswap q[8],q[6],q[9];
ccx q[0],q[3],q[8];
rz(1.2429628) q[2];
u3(4.6508995,4.1409766,4.0464911) q[4];
ccx q[1],q[6],q[5];
rzz(6.0784117) q[9],q[7];
crz(5.2018395) q[5],q[2];
z q[0];
ccx q[6],q[9],q[4];
cu3(0.95127924,3.6109333,4.2799159) q[8],q[3];
cx q[7],q[1];
ch q[7],q[6];
ccx q[2],q[1],q[0];
cy q[4],q[3];
swap q[8],q[5];
rx(3.2593363) q[9];
sdg q[2];
cx q[4],q[0];
ch q[1],q[6];
cx q[7],q[8];
t q[3];
tdg q[5];
u3(2.0968542,5.3561163,4.803171) q[9];
ccx q[1],q[2],q[5];
cu3(6.2611373,5.3124635,3.5376481) q[0],q[3];
rzz(0.16755817) q[7],q[6];
ccx q[4],q[8],q[9];
swap q[4],q[2];
ccx q[8],q[5],q[0];
cx q[7],q[1];
u2(3.2300932,5.9462328) q[6];
ch q[3],q[9];
ch q[7],q[4];
cswap q[8],q[5],q[0];
cy q[1],q[6];
swap q[2],q[3];
u2(2.4971298,0.25228603) q[9];
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
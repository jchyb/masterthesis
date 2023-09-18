OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ch q[0],q[1];
ch q[8],q[2];
rz(4.9915801) q[5];
cx q[4],q[9];
tdg q[7];
cx q[6],q[3];
swap q[3],q[6];
crz(0.18494358) q[9],q[8];
cx q[0],q[5];
ch q[2],q[7];
rzz(2.5435071) q[1],q[4];
cswap q[3],q[9],q[5];
u1(4.7698267) q[7];
swap q[2],q[4];
cu3(2.3524539,4.6889804,1.2951353) q[1],q[8];
tdg q[0];
x q[6];
x q[3];
x q[1];
cswap q[9],q[6],q[0];
y q[8];
cswap q[7],q[5],q[2];
x q[4];
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
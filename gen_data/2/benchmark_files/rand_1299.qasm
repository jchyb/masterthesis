OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
tdg q[8];
tdg q[9];
cswap q[2],q[4],q[0];
swap q[7],q[6];
x q[1];
swap q[5],q[3];
ccx q[7],q[4],q[8];
crz(4.0654114) q[5],q[0];
cu3(5.7701305,1.8421342,2.9086441) q[3],q[2];
rx(0.31996277) q[1];
u1(4.0130527) q[6];
s q[9];
h q[5];
cswap q[4],q[9],q[8];
cu1(0.91368219) q[2],q[0];
t q[3];
ccx q[7],q[1],q[6];
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
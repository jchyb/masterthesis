OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[5],q[2],q[8];
tdg q[4];
t q[0];
cx q[1],q[6];
h q[9];
x q[3];
u2(2.2319545,5.2156445) q[7];
cz q[5],q[3];
ccx q[2],q[4],q[6];
cu1(3.8235509) q[9],q[7];
cu3(3.6881324,3.2379356,0.41833728) q[0],q[1];
z q[8];
u2(3.1403256,1.0218518) q[6];
x q[8];
cu3(5.8547921,2.6642583,1.818424) q[4],q[9];
rzz(2.4179251) q[0],q[7];
id q[3];
ccx q[1],q[2],q[5];
cswap q[5],q[6],q[2];
cswap q[3],q[9],q[8];
sdg q[1];
cswap q[0],q[7],q[4];
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
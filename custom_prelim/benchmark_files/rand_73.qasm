OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cu3(0.06133512,0.40955889,4.4179105) q[0],q[7];
cz q[9],q[6];
id q[8];
t q[5];
t q[4];
u1(2.7878221) q[2];
u2(4.6850158,0.34049197) q[3];
t q[1];
id q[0];
cswap q[9],q[7],q[2];
h q[5];
z q[8];
ccx q[6],q[4],q[3];
u3(1.9095331,1.605937,0.48038454) q[1];
cz q[7],q[2];
rx(0.18639511) q[3];
ccx q[5],q[1],q[4];
rx(5.2136294) q[9];
cz q[6],q[0];
sdg q[8];
rzz(4.545407) q[1],q[5];
cswap q[4],q[9],q[3];
cx q[2],q[7];
rzz(5.9580482) q[6],q[8];
id q[0];
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
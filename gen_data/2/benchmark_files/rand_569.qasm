OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[1],q[4],q[3];
cswap q[8],q[0],q[9];
cswap q[6],q[7],q[5];
u2(0.42210936,5.5879711) q[2];
rzz(3.1329643) q[8],q[1];
cu1(3.8520274) q[6],q[4];
x q[2];
id q[7];
sdg q[9];
ccx q[0],q[5],q[3];
cu3(4.3449953,2.6463771,3.9683007) q[9],q[7];
cswap q[6],q[0],q[2];
crz(4.6593238) q[5],q[1];
tdg q[3];
h q[8];
y q[4];
ccx q[2],q[6],q[0];
ccx q[9],q[3],q[8];
ry(2.0083728) q[7];
ccx q[1],q[5],q[4];
rx(4.716031) q[7];
cswap q[2],q[9],q[1];
cu3(5.6787732,1.9049664,1.9391322) q[5],q[8];
id q[3];
cswap q[6],q[0],q[4];
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
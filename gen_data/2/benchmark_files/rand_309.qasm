OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
id q[3];
crz(2.926732) q[5],q[2];
cu3(0.42526249,3.6957688,1.4183095) q[9],q[7];
ccx q[0],q[6],q[1];
u2(5.339057,3.1137516) q[8];
u1(3.3230988) q[4];
rzz(2.3679775) q[5],q[7];
ccx q[4],q[0],q[2];
rx(3.6769658) q[1];
ch q[9],q[3];
tdg q[6];
z q[8];
sdg q[1];
tdg q[9];
swap q[6],q[0];
cswap q[8],q[4],q[7];
crz(2.1645025) q[2],q[5];
rx(2.2574441) q[3];
sdg q[5];
cswap q[0],q[6],q[7];
cz q[8],q[9];
cswap q[4],q[2],q[1];
y q[3];
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
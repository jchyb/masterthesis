OPENQASM 2.0;
include "qelib1.inc";
qreg q[8];
creg c[8];
ch q[7],q[1];
rz(4.8059804) q[0];
cswap q[6],q[4],q[2];
swap q[3],q[5];
cu1(2.1083568) q[6],q[2];
u3(0.95593105,4.8628774,0.54503992) q[4];
crz(0.32993461) q[7],q[1];
ccx q[5],q[0],q[3];
sdg q[7];
u2(0.11245445,2.4791419) q[3];
ccx q[5],q[2],q[0];
cu3(2.8102795,3.2113646,1.7494802) q[4],q[6];
rz(1.4963163) q[1];
tdg q[6];
rzz(2.3008627) q[5],q[7];
rzz(6.1974505) q[2],q[1];
crz(4.3407505) q[3],q[0];
rz(5.4426445) q[4];
x q[3];
ccx q[4],q[5],q[6];
ch q[0],q[2];
rx(6.1988916) q[7];
ry(3.2815613) q[1];
cu3(4.7608335,0.90579713,3.4573058) q[3],q[2];
u2(2.6615259,5.6682375) q[6];
ccx q[4],q[0],q[7];
h q[1];
rz(1.0520786) q[5];
cu1(2.7509699) q[7],q[6];
swap q[4],q[0];
swap q[3],q[5];
cz q[2],q[1];
rx(5.1193323) q[4];
x q[3];
u2(4.4914734,0.73941748) q[2];
cswap q[6],q[1],q[0];
tdg q[7];
y q[5];
cswap q[5],q[7],q[6];
sdg q[1];
rz(0.90694361) q[3];
ccx q[2],q[0],q[4];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];

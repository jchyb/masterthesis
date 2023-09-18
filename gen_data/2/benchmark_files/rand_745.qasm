OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
x q[0];
rzz(1.5764179) q[4],q[6];
cswap q[1],q[3],q[7];
cz q[2],q[5];
y q[8];
sdg q[9];
ch q[0],q[4];
swap q[5],q[9];
z q[6];
cx q[1],q[7];
ccx q[3],q[2],q[8];
ccx q[1],q[7],q[6];
rx(1.4257805) q[3];
ccx q[0],q[4],q[8];
cx q[5],q[9];
sdg q[2];
cx q[0],q[6];
cu1(4.2964511) q[5],q[4];
u1(5.1233726) q[8];
ccx q[7],q[9],q[2];
u3(0.72091876,6.2283316,4.2690898) q[3];
sdg q[1];
id q[7];
s q[5];
cy q[9],q[4];
crz(6.2060954) q[3],q[8];
swap q[1],q[0];
cu1(4.3966368) q[6],q[2];
t q[9];
id q[2];
cswap q[7],q[0],q[6];
ccx q[4],q[1],q[3];
sdg q[5];
u2(5.1698498,4.2843211) q[8];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
u2(5.6968212,6.0746217) q[6];
z q[4];
u2(1.0801506,3.3342089) q[8];
ccx q[7],q[5],q[0];
crz(2.5092016) q[1],q[2];
ch q[9],q[3];
cu1(3.2853438) q[0],q[9];
ccx q[8],q[5],q[6];
sdg q[3];
u3(5.8944295,6.2278115,0.69353902) q[7];
cswap q[4],q[2],q[1];
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
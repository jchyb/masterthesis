OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
x q[3];
ccx q[7],q[0],q[8];
y q[1];
x q[6];
y q[2];
cswap q[5],q[4],q[9];
u2(3.3771365,3.1220219) q[4];
cu1(1.8861934) q[7],q[2];
cswap q[3],q[1],q[0];
cz q[6],q[8];
u2(3.5950849,4.6368498) q[9];
sdg q[5];
cswap q[3],q[0],q[1];
cz q[7],q[5];
cswap q[2],q[8],q[9];
rzz(6.0540416) q[4],q[6];
rzz(0.18747953) q[2],q[7];
crz(2.9805192) q[0],q[6];
cswap q[5],q[1],q[4];
s q[9];
rx(1.8007101) q[3];
id q[8];
z q[5];
cu3(5.7740746,2.2830858,4.6976346) q[4],q[9];
cswap q[0],q[6],q[7];
ccx q[1],q[2],q[8];
u2(0.77140374,5.1847599) q[3];
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
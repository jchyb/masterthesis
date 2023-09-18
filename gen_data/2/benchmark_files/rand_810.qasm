OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[2],q[6],q[4];
ccx q[7],q[0],q[3];
u3(2.5590614,3.9058439,1.1853376) q[8];
cswap q[1],q[5],q[9];
cu3(5.0825749,1.4503024,1.5082421) q[7],q[3];
cswap q[2],q[0],q[8];
rz(2.2317489) q[1];
u1(0.12599877) q[5];
crz(4.3807009) q[9],q[6];
u2(4.8821821,0.965439) q[4];
cswap q[0],q[6],q[9];
y q[1];
rx(0.88518658) q[7];
cz q[8],q[2];
ccx q[4],q[5],q[3];
cswap q[9],q[3],q[7];
cu1(6.2154188) q[8],q[4];
cswap q[5],q[1],q[6];
swap q[2],q[0];
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
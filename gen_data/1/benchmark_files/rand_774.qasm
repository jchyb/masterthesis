OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[0],q[4],q[6];
cswap q[7],q[2],q[9];
cu1(5.5152559) q[1],q[8];
swap q[3],q[5];
x q[6];
ry(6.0280445) q[5];
ch q[3],q[9];
swap q[7],q[8];
cswap q[0],q[1],q[4];
h q[2];
s q[9];
cu3(1.4863381,2.9959776,2.4401061) q[7],q[4];
u2(0.59609822,3.3139986) q[5];
cswap q[2],q[0],q[6];
cx q[3],q[8];
ry(4.5031954) q[1];
cz q[9],q[0];
cswap q[5],q[7],q[3];
s q[6];
cz q[1],q[2];
y q[8];
h q[4];
h q[7];
u3(0.089627684,2.9042951,6.2517813) q[5];
y q[0];
cz q[2],q[3];
rzz(2.7855428) q[4],q[9];
cswap q[1],q[8],q[6];
cu1(5.8486288) q[8],q[3];
ccx q[6],q[9],q[1];
cswap q[5],q[4],q[2];
rzz(1.6451514) q[0],q[7];
z q[1];
swap q[7],q[8];
ccx q[6],q[9],q[5];
rzz(0.77615608) q[3],q[2];
u2(3.6263395,3.5897284) q[0];
rx(5.2886871) q[4];
cx q[5],q[9];
swap q[2],q[1];
ccx q[3],q[6],q[0];
ccx q[4],q[8],q[7];
ccx q[1],q[0],q[5];
sdg q[4];
ccx q[8],q[6],q[9];
rz(4.0042622) q[3];
s q[2];
h q[7];
ccx q[8],q[0],q[3];
rz(4.9366629) q[9];
crz(2.8514289) q[1],q[5];
ccx q[2],q[7],q[6];
s q[4];
cswap q[8],q[7],q[4];
x q[6];
u1(1.9300402) q[1];
cswap q[5],q[3],q[0];
s q[9];
sdg q[2];
ch q[9],q[7];
u2(2.6289149,5.3589598) q[4];
ccx q[1],q[6],q[5];
rz(0.5305687) q[2];
s q[8];
rzz(2.6935425) q[0],q[3];
ccx q[8],q[2],q[1];
x q[7];
ch q[0],q[3];
cx q[4],q[6];
cy q[5],q[9];
rx(0.21786864) q[8];
u3(3.333842,0.29563478,3.8827986) q[3];
y q[6];
ccx q[5],q[7],q[0];
cx q[4],q[1];
u1(5.8651693) q[2];
s q[9];
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
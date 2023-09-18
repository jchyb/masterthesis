OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[0],q[9],q[7];
cswap q[3],q[5],q[6];
rx(3.5490875) q[4];
u1(1.9577064) q[8];
ch q[2],q[1];
ccx q[7],q[1],q[3];
ccx q[5],q[8],q[2];
ccx q[4],q[9],q[0];
id q[6];
ccx q[7],q[2],q[8];
x q[0];
sdg q[4];
swap q[5],q[1];
cu1(2.8209308) q[3],q[6];
tdg q[9];
ccx q[0],q[1],q[3];
cswap q[8],q[9],q[2];
z q[6];
ccx q[7],q[5],q[4];
cu3(4.3924787,0.54950468,3.8686078) q[6],q[3];
cswap q[1],q[2],q[4];
u2(5.5474105,3.851838) q[5];
ccx q[7],q[8],q[9];
ry(5.8260386) q[0];
cswap q[6],q[8],q[9];
ccx q[0],q[5],q[7];
ccx q[2],q[4],q[1];
ry(4.1747473) q[3];
rzz(3.5936561) q[6],q[8];
u2(5.8548262,3.6507254) q[3];
rzz(1.3367518) q[7],q[5];
s q[1];
u2(0.76581723,1.9223182) q[9];
cy q[2],q[4];
x q[0];
id q[2];
u2(1.0048776,4.4968911) q[8];
u1(2.2452872) q[7];
crz(3.8335029) q[9],q[1];
cy q[4],q[5];
sdg q[3];
u3(0.33805116,5.0300838,2.4769097) q[0];
u2(6.0058518,4.0450523) q[6];
ch q[0],q[6];
ry(0.44336393) q[1];
ccx q[7],q[3],q[9];
sdg q[2];
ccx q[5],q[8],q[4];
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
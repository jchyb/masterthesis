OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[7],q[4],q[8];
rz(3.852491) q[1];
x q[5];
sdg q[0];
ccx q[6],q[3],q[9];
u2(2.7453623,4.9783766) q[2];
sdg q[9];
rzz(3.3677321) q[2],q[8];
y q[6];
cswap q[3],q[4],q[0];
cx q[5],q[7];
rz(5.4097802) q[1];
crz(2.8228257) q[9],q[3];
cswap q[7],q[6],q[0];
cswap q[4],q[5],q[2];
u1(1.9083233) q[8];
rz(3.1389428) q[1];
cswap q[0],q[8],q[4];
cu3(1.1669758,0.14146705,6.1081252) q[2],q[1];
sdg q[7];
ccx q[6],q[3],q[5];
sdg q[9];
ccx q[2],q[1],q[0];
ccx q[8],q[6],q[9];
u2(0.58426501,5.8622291) q[4];
ccx q[5],q[3],q[7];
cu3(3.396959,3.7796267,4.0117194) q[8],q[6];
cu1(3.5663014) q[2],q[5];
cswap q[4],q[3],q[0];
cswap q[7],q[9],q[1];
cx q[9],q[7];
ccx q[3],q[5],q[0];
u2(2.5248668,5.6449106) q[8];
rx(6.0300133) q[4];
cswap q[6],q[1],q[2];
cy q[9],q[6];
sdg q[8];
ch q[0],q[3];
ccx q[4],q[5],q[7];
rx(3.2911235) q[2];
u1(1.5483834) q[1];
s q[6];
cu3(2.3018696,0.44081899,1.7918888) q[2],q[1];
ch q[0],q[3];
rzz(3.8520801) q[9],q[8];
rx(6.0202503) q[5];
swap q[4],q[7];
y q[0];
cswap q[6],q[9],q[4];
cz q[3],q[8];
ccx q[2],q[7],q[5];
x q[1];
cu3(4.3636473,0.60802191,5.781691) q[7],q[0];
ccx q[4],q[9],q[6];
ry(4.0254399) q[1];
h q[5];
cswap q[3],q[2],q[8];
cswap q[5],q[9],q[7];
sdg q[3];
s q[2];
cswap q[6],q[4],q[8];
u1(5.9213383) q[1];
rz(3.4363398) q[0];
u3(1.1501231,1.4764195,2.2630045) q[4];
y q[8];
cu1(1.5554493) q[3],q[5];
u3(2.4611219,1.2482455,1.8873169) q[0];
cu3(0.12407642,6.0861598,3.0656526) q[6],q[2];
ch q[7],q[9];
t q[1];
swap q[9],q[3];
u2(3.2671819,1.230447) q[0];
u2(6.2532395,6.0378956) q[7];
ccx q[6],q[1],q[4];
rx(1.7495582) q[2];
cz q[5],q[8];
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
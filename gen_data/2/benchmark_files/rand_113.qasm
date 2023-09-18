OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
y q[7];
ch q[5],q[3];
z q[4];
ccx q[2],q[9],q[0];
u3(0.40281547,2.5386539,0.28450997) q[1];
ry(0.99512874) q[8];
sdg q[6];
h q[3];
cu1(1.7248762) q[6],q[5];
ccx q[0],q[7],q[9];
cu3(3.0475735,1.1594495,2.9544318) q[4],q[1];
cy q[8],q[2];
swap q[6],q[7];
cx q[9],q[1];
ch q[2],q[5];
rx(2.7208417) q[4];
cu1(1.9172359) q[0],q[8];
tdg q[3];
id q[3];
rz(4.6349257) q[2];
ch q[8],q[6];
cswap q[0],q[9],q[7];
crz(5.9551415) q[4],q[1];
u3(2.5205165,5.9544845,3.7959752) q[5];
rx(0.61710848) q[8];
cswap q[1],q[7],q[6];
ccx q[2],q[0],q[4];
z q[3];
id q[5];
u1(0.25267879) q[9];
crz(4.020005) q[1],q[9];
rx(1.9510672) q[4];
cswap q[7],q[2],q[6];
ccx q[5],q[0],q[8];
u1(4.6544423) q[3];
cswap q[8],q[4],q[5];
rzz(5.7125798) q[0],q[6];
cswap q[3],q[1],q[2];
u2(6.240262,5.9589912) q[9];
s q[7];
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
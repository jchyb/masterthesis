OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
u2(3.7608351,2.4768098) q[3];
crz(1.3153415) q[8],q[5];
swap q[9],q[4];
swap q[6],q[2];
cswap q[7],q[1],q[0];
ccx q[7],q[5],q[9];
swap q[2],q[4];
ch q[6],q[1];
x q[8];
cy q[3],q[0];
cswap q[2],q[5],q[1];
u2(3.7831334,2.7043385) q[8];
cswap q[0],q[6],q[4];
h q[3];
swap q[9],q[7];
cswap q[2],q[7],q[1];
rz(4.604355) q[4];
crz(5.3291638) q[9],q[5];
s q[8];
rzz(3.2212142) q[6],q[0];
u3(5.3235938,2.9709377,5.8127474) q[3];
cswap q[8],q[6],q[7];
cswap q[5],q[1],q[9];
s q[2];
swap q[4],q[3];
y q[0];
swap q[6],q[7];
cu1(0.91174198) q[8],q[0];
u1(3.6909245) q[4];
cswap q[5],q[1],q[9];
cx q[3],q[2];
swap q[6],q[3];
rx(4.5912593) q[7];
x q[5];
ch q[2],q[1];
crz(1.8796262) q[8],q[4];
rx(0.64072461) q[0];
sdg q[9];
z q[6];
cx q[1],q[8];
u3(3.7814319,3.3413586,4.9599842) q[4];
cswap q[0],q[9],q[3];
x q[5];
rz(0.8332261) q[2];
sdg q[7];
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
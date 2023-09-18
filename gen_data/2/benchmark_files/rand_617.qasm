OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rzz(5.4702456) q[7],q[1];
t q[8];
cswap q[5],q[2],q[3];
s q[4];
swap q[9],q[0];
y q[6];
cswap q[0],q[7],q[2];
cy q[5],q[3];
u2(5.2415772,5.2028228) q[4];
u3(5.4452911,1.7332224,2.1104494) q[1];
cu1(2.8650502) q[8],q[6];
u1(5.9829413) q[9];
u3(4.0560044,2.6250908,5.6346498) q[3];
id q[8];
ccx q[6],q[7],q[2];
id q[5];
rzz(0.82791856) q[4],q[1];
swap q[0],q[9];
t q[7];
cy q[4],q[0];
sdg q[1];
cswap q[2],q[3],q[5];
z q[9];
cu3(5.8466212,4.0924567,2.8667674) q[8],q[6];
y q[8];
ch q[9],q[4];
sdg q[5];
cu3(5.6723418,3.8412572,0.85330493) q[2],q[7];
sdg q[0];
cswap q[3],q[1],q[6];
t q[1];
ch q[6],q[4];
ccx q[3],q[7],q[0];
swap q[2],q[9];
t q[8];
rx(3.635668) q[5];
swap q[1],q[4];
ccx q[2],q[5],q[6];
crz(0.98011141) q[9],q[7];
ccx q[3],q[0],q[8];
cswap q[6],q[0],q[9];
rzz(3.5973256) q[7],q[5];
cswap q[8],q[3],q[4];
cu3(3.9033444,0.10389848,1.4951386) q[1],q[2];
ccx q[2],q[7],q[6];
crz(0.66351366) q[4],q[3];
rzz(0.65693664) q[5],q[0];
ccx q[1],q[8],q[9];
x q[1];
ccx q[5],q[0],q[7];
cu1(3.6801194) q[3],q[6];
cswap q[8],q[4],q[9];
t q[2];
ccx q[3],q[2],q[4];
cswap q[8],q[6],q[7];
cswap q[9],q[1],q[0];
t q[5];
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
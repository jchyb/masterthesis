OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
z q[0];
ccx q[5],q[6],q[3];
crz(4.0090851) q[1],q[2];
rzz(5.8056124) q[9],q[7];
z q[4];
y q[8];
ccx q[7],q[2],q[3];
cu3(1.0609905,3.0638218,2.7303723) q[6],q[4];
ry(5.33548) q[5];
cswap q[9],q[1],q[8];
h q[0];
t q[8];
ch q[7],q[6];
rzz(2.3545278) q[0],q[5];
ccx q[2],q[1],q[4];
tdg q[9];
x q[3];
swap q[2],q[6];
ccx q[4],q[7],q[5];
cy q[0],q[8];
cswap q[9],q[1],q[3];
ccx q[8],q[4],q[3];
cswap q[5],q[0],q[1];
s q[9];
cu3(0.90118874,1.5776499,4.8901881) q[7],q[6];
u3(5.6872164,5.820226,3.9865929) q[2];
u3(5.7071075,6.1148424,1.5954617) q[8];
rz(4.3298723) q[5];
t q[9];
ccx q[0],q[2],q[7];
ccx q[1],q[6],q[3];
h q[4];
u2(6.100969,3.7885241) q[9];
cswap q[6],q[0],q[1];
cu1(1.4107317) q[3],q[4];
y q[7];
rx(3.7545328) q[8];
sdg q[5];
id q[2];
ccx q[6],q[8],q[1];
cswap q[9],q[4],q[5];
cswap q[0],q[7],q[2];
tdg q[3];
swap q[9],q[0];
ccx q[4],q[2],q[7];
u2(1.8601757,4.2173021) q[5];
cx q[6],q[1];
cu3(2.7376204,5.5780797,3.8658327) q[3],q[8];
cswap q[8],q[1],q[2];
cswap q[3],q[7],q[9];
rzz(2.0684267) q[5],q[6];
id q[0];
u2(2.4633444,3.7224471) q[4];
ry(4.9683801) q[4];
cx q[5],q[0];
u3(0.55766199,4.9510453,4.4119745) q[8];
ccx q[6],q[2],q[9];
ch q[3],q[1];
rx(5.5063602) q[7];
u2(0.31462686,5.2590838) q[7];
ccx q[1],q[2],q[3];
cswap q[9],q[8],q[4];
crz(0.46354324) q[5],q[0];
u1(0.08582034) q[6];
cu1(1.1073956) q[3],q[2];
cswap q[0],q[5],q[4];
ccx q[8],q[7],q[1];
swap q[9],q[6];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cx q[6],q[0];
swap q[3],q[1];
cswap q[7],q[2],q[4];
cy q[5],q[9];
u1(2.1158175) q[8];
swap q[6],q[0];
s q[3];
cu3(2.8071064,1.7713819,5.8785695) q[9],q[5];
h q[4];
ccx q[8],q[2],q[7];
x q[1];
cswap q[6],q[4],q[9];
ccx q[8],q[1],q[0];
ccx q[2],q[7],q[3];
rz(1.5262435) q[5];
crz(4.8229668) q[0],q[6];
id q[5];
t q[8];
cswap q[3],q[2],q[7];
cu1(3.6766582) q[4],q[1];
u2(5.5668064,1.599764) q[9];
s q[7];
u3(1.8354474,4.0031932,5.928281) q[3];
swap q[8],q[4];
cu3(5.5622662,4.7310318,4.0802253) q[6],q[0];
h q[2];
ccx q[9],q[5],q[1];
cswap q[4],q[9],q[5];
cswap q[2],q[7],q[0];
swap q[6],q[3];
cu1(0.87053355) q[1],q[8];
cx q[2],q[0];
ccx q[6],q[9],q[3];
rzz(5.5006675) q[4],q[8];
u2(0.81061154,2.5140026) q[5];
cy q[7],q[1];
ccx q[2],q[4],q[1];
y q[9];
id q[3];
u1(2.9728566) q[0];
ch q[8],q[5];
t q[7];
ry(5.8039052) q[6];
cswap q[9],q[1],q[0];
u1(0.13060346) q[7];
ccx q[5],q[8],q[6];
rzz(6.063097) q[2],q[3];
u3(2.5779086,5.3441113,0.67342714) q[4];
ccx q[5],q[8],q[6];
cswap q[4],q[1],q[7];
cswap q[0],q[2],q[9];
id q[3];
ccx q[6],q[7],q[8];
cx q[3],q[0];
ccx q[5],q[9],q[2];
swap q[1],q[4];
cswap q[9],q[8],q[7];
rx(4.6181378) q[5];
crz(2.1081004) q[0],q[1];
rz(1.3699034) q[4];
cu3(3.2134271,5.4236023,3.2317885) q[6],q[2];
rx(4.8597485) q[3];
cx q[9],q[6];
ccx q[0],q[7],q[5];
cswap q[4],q[2],q[8];
s q[1];
t q[3];
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
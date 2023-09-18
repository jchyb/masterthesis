OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
t q[1];
rzz(5.8733408) q[6],q[9];
cu3(2.8933595,0.52644681,5.8023949) q[3],q[0];
cu1(4.4890062) q[5],q[4];
rx(1.2301466) q[8];
u2(1.950557,2.0524034) q[7];
id q[2];
cx q[9],q[0];
ch q[2],q[3];
id q[8];
u1(3.9030382) q[6];
cu1(5.687182) q[1],q[7];
cu1(2.9238663) q[4],q[5];
cu3(4.8762153,5.4885544,2.3857018) q[2],q[6];
crz(5.6115393) q[0],q[7];
s q[3];
rzz(2.0214864) q[9],q[1];
rx(2.6144862) q[5];
z q[8];
rx(1.4398331) q[4];
ccx q[3],q[1],q[4];
rx(0.73366657) q[6];
cu1(2.5960875) q[2],q[5];
cz q[7],q[0];
cz q[9],q[8];
ccx q[5],q[3],q[6];
ry(3.120731) q[9];
y q[4];
cu1(2.0734463) q[1],q[7];
cswap q[8],q[0],q[2];
ccx q[4],q[3],q[6];
cz q[1],q[5];
ccx q[8],q[2],q[7];
x q[0];
t q[9];
id q[3];
cx q[8],q[1];
ccx q[9],q[6],q[0];
ccx q[7],q[5],q[4];
rx(6.1936955) q[2];
cu1(5.8465065) q[3],q[0];
rx(1.4227787) q[8];
ch q[6],q[7];
cswap q[5],q[4],q[2];
cx q[1],q[9];
cswap q[3],q[9],q[0];
ccx q[4],q[7],q[1];
cswap q[5],q[2],q[6];
ry(4.4501868) q[8];
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
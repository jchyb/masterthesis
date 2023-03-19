OPENQASM 2.0;
include "qelib1.inc";
qreg q[12];
creg c[12];
cswap q[10],q[4],q[1];
cswap q[6],q[3],q[11];
cx q[5],q[7];
cu1(2.6762029) q[0],q[8];
ry(5.7552658) q[9];
rz(3.5931706) q[2];
cu1(3.8028142) q[5],q[4];
u2(2.6492017,5.2482462) q[9];
ch q[6],q[0];
cswap q[8],q[2],q[3];
ccx q[11],q[1],q[10];
id q[7];
cswap q[1],q[8],q[11];
ccx q[6],q[3],q[0];
x q[4];
ccx q[2],q[5],q[10];
tdg q[7];
u2(0.88882529,5.7583611) q[9];
u2(4.6219333,4.8666288) q[8];
u1(3.2083529) q[7];
tdg q[6];
h q[4];
ccx q[2],q[1],q[3];
crz(3.0883519) q[5],q[11];
cu3(0.46385439,2.2080935,4.7611645) q[9],q[0];
x q[10];
cu1(2.175249) q[5],q[1];
cu1(2.203486) q[7],q[9];
cswap q[3],q[2],q[8];
crz(4.7364951) q[10],q[11];
ccx q[4],q[6],q[0];
t q[5];
rx(5.2788571) q[7];
ccx q[11],q[1],q[6];
ccx q[8],q[2],q[10];
ccx q[4],q[9],q[0];
tdg q[3];
cy q[10],q[2];
ccx q[6],q[11],q[4];
crz(4.0867247) q[0],q[1];
ch q[3],q[9];
id q[5];
cz q[8],q[7];
ccx q[7],q[11],q[6];
swap q[5],q[8];
cswap q[9],q[1],q[2];
cy q[3],q[4];
rz(3.1245135) q[0];
ry(3.3667411) q[10];
ccx q[8],q[0],q[10];
cu3(2.8531386,4.0079101,5.0811523) q[4],q[1];
swap q[3],q[9];
sdg q[7];
rz(5.5227291) q[6];
rz(4.5041016) q[2];
rzz(4.8644968) q[11],q[5];
cswap q[1],q[5],q[10];
tdg q[6];
cx q[0],q[11];
sdg q[3];
tdg q[8];
cu3(4.1553869,5.4544375,6.2183276) q[4],q[2];
crz(5.4531615) q[9],q[7];
ccx q[3],q[0],q[7];
cu1(5.6784873) q[4],q[9];
ccx q[2],q[10],q[8];
ch q[1],q[6];
cy q[11],q[5];
ry(5.2059693) q[3];
u1(6.0849111) q[7];
rzz(5.3154559) q[1],q[5];
cy q[2],q[4];
cu3(4.9924375,3.8824268,2.0554062) q[0],q[6];
ccx q[11],q[9],q[8];
tdg q[10];
ccx q[10],q[4],q[0];
y q[6];
ch q[5],q[3];
u2(1.7675632,0.64753483) q[9];
h q[8];
cswap q[2],q[7],q[11];
h q[1];
y q[5];
crz(2.6658097) q[6],q[10];
cz q[7],q[8];
tdg q[2];
ccx q[0],q[1],q[9];
cu1(2.8594976) q[4],q[3];
y q[11];
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
measure q[10] -> c[10];
measure q[11] -> c[11];

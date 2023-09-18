OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rz(0.14252031) q[7];
rz(5.740145) q[5];
cswap q[4],q[1],q[3];
swap q[9],q[8];
ch q[0],q[2];
sdg q[6];
cswap q[0],q[1],q[3];
s q[5];
ch q[8],q[2];
ccx q[7],q[4],q[9];
u2(4.6895428,4.3082816) q[6];
ccx q[6],q[9],q[8];
u3(3.1190382,3.2441668,0.14359598) q[5];
u2(6.1345867,0.10348011) q[2];
cz q[1],q[4];
h q[0];
cz q[3],q[7];
tdg q[9];
cswap q[4],q[0],q[6];
rzz(1.3504006) q[1],q[2];
y q[7];
u2(3.5734754,4.8906986) q[5];
rzz(3.2124894) q[8],q[3];
cz q[1],q[8];
ccx q[3],q[6],q[7];
cswap q[0],q[2],q[4];
u3(5.5997809,0.12158221,1.2990094) q[5];
h q[9];
cz q[4],q[8];
ccx q[5],q[0],q[6];
cu3(0.27045047,5.5127273,2.1535995) q[7],q[1];
crz(5.2381221) q[3],q[9];
rx(1.3188267) q[2];
tdg q[1];
crz(5.4508624) q[2],q[8];
u2(5.2360335,2.3198027) q[9];
cx q[7],q[5];
u1(2.8246633) q[6];
cz q[4],q[0];
rz(0.78305454) q[3];
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
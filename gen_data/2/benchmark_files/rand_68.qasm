OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[6],q[3],q[8];
rx(3.0178302) q[5];
cu1(2.3987777) q[0],q[1];
ch q[2],q[4];
x q[7];
x q[9];
swap q[0],q[9];
sdg q[1];
ccx q[4],q[6],q[7];
cx q[5],q[2];
z q[3];
tdg q[8];
z q[8];
rz(4.5936629) q[5];
ccx q[2],q[9],q[4];
cz q[7],q[3];
cswap q[0],q[1],q[6];
cswap q[2],q[5],q[7];
ccx q[9],q[3],q[8];
ccx q[6],q[4],q[1];
s q[0];
rzz(4.7636191) q[1],q[8];
cswap q[6],q[7],q[9];
u1(4.9071407) q[3];
cy q[5],q[0];
x q[4];
t q[2];
u3(4.0684124,6.1359347,3.9269666) q[6];
h q[2];
rz(3.7067866) q[9];
ry(5.2431784) q[5];
cz q[8],q[1];
cu1(3.8004603) q[7],q[3];
cu1(4.6064832) q[0],q[4];
cswap q[8],q[4],q[9];
cswap q[7],q[0],q[1];
cx q[3],q[6];
s q[2];
ry(5.5392387) q[5];
rzz(3.5920524) q[2],q[0];
ccx q[1],q[4],q[9];
u2(5.6765985,0.22244969) q[8];
z q[5];
tdg q[6];
id q[7];
t q[3];
ch q[2],q[9];
x q[3];
ccx q[5],q[7],q[6];
ccx q[1],q[8],q[4];
id q[0];
t q[2];
ry(5.1060754) q[8];
rx(5.5975177) q[9];
cy q[6],q[0];
crz(2.5262776) q[7],q[1];
cu3(0.22168439,1.5936998,0.69307668) q[3],q[5];
z q[4];
cswap q[3],q[0],q[2];
cx q[6],q[1];
y q[9];
crz(3.2564311) q[7],q[4];
cx q[8],q[5];
cu1(1.5078196) q[0],q[6];
ccx q[9],q[2],q[3];
cx q[1],q[7];
cx q[4],q[5];
tdg q[8];
cu3(3.5877395,1.6618053,2.0882661) q[0],q[9];
cu1(4.7578735) q[7],q[8];
t q[6];
crz(2.5446912) q[1],q[2];
u2(1.9194605,1.0938711) q[4];
x q[3];
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
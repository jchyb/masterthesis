OPENQASM 2.0;
include "qelib1.inc";
qreg q[14];
creg c[14];
s q[4];
ccx q[10],q[1],q[3];
ccx q[11],q[6],q[5];
swap q[7],q[12];
crz(6.0688035) q[8],q[9];
ccx q[0],q[2],q[13];
u1(5.6700096) q[13];
tdg q[0];
t q[7];
cswap q[9],q[10],q[3];
y q[5];
cswap q[4],q[6],q[11];
cswap q[12],q[8],q[1];
y q[2];
cx q[1],q[11];
cswap q[12],q[4],q[6];
cswap q[8],q[5],q[0];
crz(4.9488921) q[2],q[7];
ccx q[3],q[10],q[13];
u1(1.2953289) q[9];
ccx q[7],q[9],q[5];
ccx q[3],q[8],q[6];
y q[4];
ccx q[1],q[10],q[11];
ccx q[2],q[13],q[0];
u2(5.5465591,5.5786254) q[12];
swap q[3],q[6];
cx q[9],q[13];
crz(2.8094978) q[2],q[7];
swap q[1],q[5];
swap q[8],q[10];
t q[11];
z q[12];
z q[0];
rx(6.0534101) q[4];
ch q[2],q[0];
ccx q[5],q[10],q[7];
h q[6];
cu3(6.2375579,5.6496406,0.59591434) q[8],q[9];
ccx q[13],q[3],q[1];
tdg q[11];
x q[12];
id q[4];
sdg q[1];
ch q[6],q[5];
ch q[10],q[2];
ry(4.7757731) q[8];
y q[4];
ccx q[9],q[13],q[7];
cu3(0.046892004,2.426832,1.6399112) q[12],q[11];
crz(2.2801049) q[3],q[0];
ccx q[3],q[11],q[8];
cy q[12],q[6];
cswap q[1],q[0],q[4];
crz(6.1240373) q[2],q[13];
cswap q[5],q[9],q[10];
s q[7];
cswap q[13],q[4],q[8];
h q[7];
ccx q[5],q[11],q[2];
crz(1.5747773) q[10],q[12];
crz(3.1482041) q[3],q[6];
ch q[9],q[1];
sdg q[0];
cy q[13],q[10];
cswap q[11],q[8],q[5];
ry(4.8280468) q[9];
rzz(6.1005369) q[4],q[3];
id q[6];
cswap q[12],q[2],q[7];
z q[1];
id q[0];
rx(1.2518406) q[10];
y q[9];
cy q[7],q[11];
t q[3];
ccx q[12],q[2],q[8];
u1(5.0409895) q[5];
t q[1];
swap q[13],q[6];
u2(3.1561644,3.8888353) q[0];
y q[4];
ccx q[11],q[7],q[0];
rx(0.39766609) q[3];
ccx q[13],q[10],q[12];
swap q[1],q[5];
h q[2];
rzz(4.132942) q[6],q[4];
y q[8];
y q[9];
cz q[3],q[12];
rz(2.9898587) q[0];
cswap q[7],q[10],q[9];
rz(0.32839668) q[4];
ccx q[6],q[1],q[13];
ccx q[2],q[8],q[11];
sdg q[5];
u2(1.6951411,5.030625) q[7];
rx(4.40525) q[1];
swap q[4],q[9];
id q[6];
cswap q[12],q[3],q[5];
swap q[2],q[10];
cz q[8],q[13];
cz q[11],q[0];
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
measure q[12] -> c[12];
measure q[13] -> c[13];
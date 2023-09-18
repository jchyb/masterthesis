OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cu1(5.7926502) q[6],q[7];
crz(6.0146906) q[3],q[1];
cswap q[0],q[8],q[4];
u2(5.952933,0.60847342) q[2];
u1(2.4083895) q[9];
h q[5];
ccx q[2],q[6],q[4];
id q[7];
cswap q[5],q[9],q[0];
u2(1.4055765,4.6976917) q[8];
rx(6.2210797) q[3];
u1(0.15727482) q[1];
crz(3.3799754) q[2],q[6];
tdg q[7];
ccx q[9],q[5],q[0];
sdg q[8];
cswap q[1],q[3],q[4];
cu3(3.8000839,1.3993567,3.9415923) q[3],q[4];
cswap q[0],q[2],q[6];
cswap q[5],q[8],q[7];
crz(6.2817539) q[1],q[9];
z q[7];
u1(1.3205639) q[6];
u2(1.1336119,0.63430945) q[1];
sdg q[3];
s q[9];
ccx q[5],q[0],q[4];
ry(3.5826296) q[8];
ry(6.0511224) q[2];
swap q[8],q[7];
ch q[5],q[2];
ry(1.0608236) q[1];
cz q[9],q[4];
z q[0];
ch q[3],q[6];
sdg q[8];
u1(0.86735984) q[6];
cswap q[0],q[1],q[5];
x q[4];
s q[7];
cy q[3],q[2];
ry(1.918048) q[9];
ch q[2],q[9];
t q[7];
z q[1];
ccx q[3],q[5],q[0];
x q[6];
ry(4.5248175) q[4];
rx(1.5234122) q[8];
cswap q[9],q[0],q[6];
cswap q[3],q[2],q[4];
ccx q[8],q[1],q[5];
ry(3.6209772) q[7];
ccx q[4],q[8],q[1];
crz(5.311874) q[0],q[6];
cy q[3],q[7];
h q[9];
y q[5];
u3(3.7226815,4.5140932,0.86990664) q[2];
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
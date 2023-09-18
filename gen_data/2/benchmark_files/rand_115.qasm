OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rzz(1.930663) q[4],q[3];
u2(0.9830305,4.5870555) q[0];
cx q[1],q[6];
u3(3.16495,3.6567771,2.5112554) q[9];
s q[7];
id q[2];
rx(2.5404767) q[5];
u2(4.2343286,2.5676898) q[8];
cu3(0.97574532,2.8004153,3.8887108) q[7],q[6];
x q[4];
u3(2.7861161,4.5494082,1.4720301) q[5];
u1(1.1028127) q[8];
cy q[0],q[1];
ccx q[3],q[2],q[9];
tdg q[5];
ccx q[2],q[7],q[6];
h q[9];
swap q[4],q[8];
x q[3];
y q[1];
u2(1.238597,4.7685525) q[0];
ccx q[8],q[3],q[1];
s q[4];
cswap q[0],q[6],q[5];
ch q[2],q[9];
sdg q[7];
cswap q[9],q[3],q[7];
z q[2];
ccx q[5],q[6],q[4];
crz(3.8947825) q[0],q[8];
tdg q[1];
swap q[1],q[2];
cy q[4],q[0];
ccx q[5],q[6],q[3];
tdg q[9];
cu3(1.9662593,0.10212204,5.9787664) q[7],q[8];
ch q[9],q[0];
ccx q[6],q[7],q[3];
ch q[1],q[5];
cu1(0.62449161) q[2],q[4];
sdg q[8];
ccx q[4],q[7],q[1];
ry(5.6467674) q[0];
ccx q[5],q[3],q[6];
u3(6.2604213,5.0373853,5.7344771) q[2];
cy q[9],q[8];
id q[4];
cy q[8],q[3];
crz(3.0889847) q[6],q[7];
swap q[0],q[2];
ccx q[9],q[1],q[5];
ccx q[7],q[2],q[1];
h q[6];
u3(4.1070634,3.2527576,5.4666475) q[4];
cswap q[0],q[8],q[5];
t q[9];
u3(4.8960438,5.8518074,1.3830142) q[3];
z q[2];
u1(0.52001415) q[8];
z q[6];
cswap q[7],q[0],q[5];
u2(1.5283736,1.3844706) q[4];
rzz(5.1166908) q[3],q[1];
rz(5.0155104) q[9];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[8],q[4],q[3];
u2(2.6297323,2.3464717) q[9];
x q[0];
ccx q[7],q[2],q[1];
cu3(6.0999925,3.6387847,0.52699459) q[5],q[6];
cy q[0],q[4];
swap q[6],q[7];
cswap q[8],q[2],q[9];
rz(6.101359) q[5];
h q[1];
u3(1.0476902,2.7400633,4.930335) q[3];
cu3(0.37154744,0.29152217,4.1238686) q[7],q[0];
ch q[3],q[2];
cu1(4.2750724) q[4],q[8];
cu3(0.87633869,0.19263151,2.3223778) q[5],q[6];
cu3(4.5198799,1.2547389,0.96536529) q[1],q[9];
ccx q[0],q[4],q[3];
cu1(4.361783) q[8],q[6];
t q[7];
cx q[9],q[2];
id q[5];
z q[1];
ccx q[3],q[9],q[1];
cswap q[0],q[6],q[7];
cu3(5.6641108,2.5128495,1.1991951) q[4],q[8];
u1(0.63789369) q[2];
rx(1.3923092) q[5];
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
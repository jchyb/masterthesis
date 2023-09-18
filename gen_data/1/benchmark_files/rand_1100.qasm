OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[8],q[4],q[3];
tdg q[7];
z q[1];
tdg q[5];
cswap q[2],q[6],q[9];
u3(6.1420055,4.3765619,0.37635125) q[0];
cy q[4],q[5];
cu1(1.4268426) q[9],q[6];
cswap q[2],q[3],q[1];
x q[0];
ch q[7],q[8];
cx q[0],q[2];
cy q[4],q[5];
s q[7];
cx q[3],q[9];
rx(4.2889151) q[6];
t q[1];
s q[8];
cu1(1.1003876) q[4],q[5];
h q[3];
cswap q[8],q[6],q[1];
cswap q[9],q[7],q[0];
h q[2];
s q[1];
u3(1.1827961,6.0920106,3.9365951) q[7];
sdg q[0];
ccx q[8],q[6],q[4];
ccx q[2],q[5],q[3];
id q[9];
cu3(3.8186125,5.6124802,0.92302332) q[5],q[7];
ccx q[4],q[0],q[2];
cswap q[6],q[1],q[9];
z q[3];
t q[8];
ccx q[5],q[4],q[8];
rzz(3.2014297) q[2],q[0];
cswap q[7],q[6],q[9];
crz(0.55989206) q[1],q[3];
rzz(1.227279) q[7],q[8];
ccx q[2],q[9],q[3];
cu1(1.0408059) q[0],q[1];
rzz(1.406928) q[4],q[5];
rz(4.6143205) q[6];
cz q[5],q[2];
cswap q[6],q[0],q[4];
u2(1.6007294,2.147757) q[8];
cswap q[1],q[7],q[3];
t q[9];
cz q[4],q[7];
swap q[0],q[6];
tdg q[5];
ccx q[9],q[8],q[1];
ch q[3],q[2];
ccx q[7],q[0],q[2];
cswap q[9],q[5],q[4];
u1(6.018256) q[1];
cu1(2.967939) q[6],q[8];
h q[3];
cx q[3],q[8];
cswap q[5],q[1],q[0];
ccx q[7],q[4],q[2];
h q[9];
s q[6];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[11];
creg c[11];
cu1(1.6635022) q[0],q[7];
cx q[4],q[2];
swap q[1],q[5];
u1(0.90115118) q[9];
rzz(2.1020218) q[6],q[8];
cu3(1.0885542,5.729714,2.5886946) q[3],q[10];
swap q[0],q[10];
ccx q[8],q[2],q[3];
ccx q[1],q[7],q[4];
z q[5];
rx(1.4992839) q[9];
u3(0.45511907,0.042411222,6.2173138) q[6];
y q[0];
cu1(4.6833114) q[4],q[1];
ccx q[3],q[5],q[8];
cswap q[7],q[2],q[9];
ry(1.0970296) q[10];
h q[6];
crz(0.80548721) q[9],q[2];
id q[7];
cswap q[1],q[10],q[4];
id q[8];
ccx q[5],q[6],q[3];
y q[0];
s q[9];
cy q[5],q[6];
sdg q[7];
rx(1.227567) q[3];
cz q[4],q[2];
cy q[8],q[0];
s q[1];
sdg q[10];
cu1(3.1606429) q[10],q[5];
u3(2.2851327,1.8963646,1.382598) q[3];
u1(4.7241347) q[8];
x q[6];
cx q[0],q[1];
cx q[9],q[4];
rzz(2.2058789) q[7],q[2];
cx q[1],q[4];
cx q[0],q[5];
swap q[9],q[6];
ry(3.2479799) q[8];
z q[10];
x q[2];
cu1(5.0306511) q[3],q[7];
cy q[2],q[1];
cswap q[0],q[10],q[5];
z q[3];
ccx q[8],q[9],q[6];
cu3(4.7392054,6.1562144,5.7590702) q[4],q[7];
h q[4];
cswap q[6],q[5],q[9];
cswap q[0],q[10],q[1];
ry(3.5590903) q[7];
u1(1.1104411) q[3];
cx q[8],q[2];
z q[5];
rzz(3.052183) q[6],q[3];
h q[8];
ch q[4],q[2];
cx q[10],q[1];
u1(0.99543881) q[9];
sdg q[0];
h q[7];
cswap q[10],q[1],q[2];
crz(3.1139827) q[6],q[5];
cswap q[8],q[4],q[3];
rz(4.2834184) q[7];
crz(6.1394336) q[9],q[0];
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

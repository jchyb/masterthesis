OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cy q[7],q[0];
u1(5.357437) q[3];
ccx q[2],q[8],q[6];
z q[9];
cswap q[1],q[4],q[5];
cu1(1.4051917) q[7],q[9];
u2(3.7580427,5.652173) q[5];
ry(3.4977674) q[8];
y q[1];
rz(0.42618683) q[4];
ccx q[6],q[2],q[3];
id q[0];
cz q[6],q[8];
crz(5.1951683) q[3],q[0];
cu1(1.924669) q[7],q[9];
sdg q[2];
cu3(3.5743738,2.8715412,3.6814447) q[5],q[4];
ry(1.9313618) q[1];
ccx q[5],q[6],q[3];
ccx q[2],q[9],q[1];
ccx q[4],q[0],q[7];
rz(0.16686664) q[8];
rzz(1.8301263) q[4],q[1];
ry(5.934684) q[9];
tdg q[7];
rzz(4.540296) q[0],q[6];
rz(5.3785536) q[8];
cswap q[5],q[3],q[2];
ccx q[2],q[5],q[7];
ccx q[9],q[4],q[8];
cu3(2.1984258,2.0003701,3.5424335) q[1],q[0];
tdg q[6];
u1(6.0553027) q[3];
swap q[6],q[2];
ccx q[5],q[8],q[1];
cswap q[0],q[3],q[9];
x q[4];
rx(1.0614848) q[7];
u3(5.8150159,5.5590542,4.327364) q[8];
u2(6.2018136,4.8570484) q[2];
id q[5];
u3(5.2618417,5.4464898,4.2051806) q[0];
rx(4.6628781) q[6];
cswap q[3],q[9],q[1];
h q[7];
u3(3.8024961,3.1006631,4.3564595) q[4];
cz q[5],q[3];
cswap q[1],q[2],q[7];
crz(4.9438339) q[4],q[9];
z q[8];
cz q[0],q[6];
cx q[0],q[8];
cy q[6],q[3];
ry(6.0154012) q[4];
ccx q[2],q[9],q[5];
cy q[7],q[1];
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
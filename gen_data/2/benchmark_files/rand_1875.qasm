OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
s q[8];
rzz(2.180809) q[1],q[6];
cswap q[5],q[2],q[4];
cu3(5.4876503,0.46074936,5.4908173) q[3],q[0];
u1(0.79918861) q[9];
u3(2.3999035,6.129098,3.3064293) q[7];
cswap q[7],q[5],q[0];
crz(6.1832876) q[3],q[8];
cswap q[9],q[2],q[6];
cu3(2.6439805,3.2220709,0.96650108) q[1],q[4];
u2(3.4347421,4.4063405) q[8];
cu3(1.1389323,1.3429398,1.8351163) q[5],q[0];
cx q[9],q[2];
cz q[4],q[1];
ch q[3],q[6];
ry(0.39967978) q[7];
ccx q[0],q[6],q[5];
id q[9];
ry(1.6916467) q[4];
ccx q[2],q[3],q[1];
cu1(5.9282643) q[8],q[7];
ry(5.5510666) q[8];
z q[3];
cswap q[2],q[9],q[1];
cz q[0],q[5];
cx q[6],q[7];
h q[4];
cswap q[0],q[9],q[8];
ccx q[7],q[2],q[3];
s q[4];
rzz(5.1741478) q[6],q[5];
s q[1];
cswap q[3],q[6],q[5];
x q[8];
cy q[9],q[2];
tdg q[1];
rx(0.45417813) q[7];
cz q[0],q[4];
crz(3.6640177) q[2],q[0];
cx q[8],q[4];
cx q[5],q[6];
cswap q[3],q[9],q[1];
s q[7];
x q[6];
cz q[9],q[4];
y q[0];
t q[7];
cswap q[8],q[2],q[1];
ry(1.0687146) q[5];
z q[3];
cu3(3.1164621,0.51629045,3.8309074) q[4],q[8];
crz(2.5857937) q[9],q[5];
swap q[1],q[6];
crz(0.45523297) q[0],q[3];
tdg q[2];
tdg q[7];
cswap q[9],q[7],q[3];
tdg q[6];
cswap q[5],q[1],q[8];
cx q[0],q[2];
id q[4];
y q[7];
ccx q[5],q[3],q[4];
cx q[0],q[2];
s q[6];
z q[1];
cx q[9],q[8];
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

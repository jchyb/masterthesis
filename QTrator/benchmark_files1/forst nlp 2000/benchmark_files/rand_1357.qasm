OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rzz(5.8986135) q[9],q[8];
cswap q[6],q[2],q[0];
z q[7];
h q[3];
cy q[4],q[1];
rz(0.86784014) q[5];
id q[7];
cswap q[0],q[2],q[3];
rzz(0.63195335) q[5],q[4];
rz(6.0227922) q[9];
ccx q[1],q[6],q[8];
cswap q[8],q[3],q[0];
cswap q[1],q[4],q[6];
ch q[2],q[5];
x q[7];
x q[9];
cu3(5.3916803,5.6453154,1.8183767) q[2],q[7];
cu1(6.2537497) q[1],q[9];
s q[4];
cy q[6],q[5];
ccx q[8],q[3],q[0];
u1(0.59935213) q[1];
y q[8];
rz(3.7221773) q[0];
rzz(3.1381991) q[9],q[4];
cy q[2],q[5];
t q[6];
ry(3.0985796) q[7];
u1(3.8260426) q[3];
ccx q[6],q[0],q[1];
rzz(5.4120013) q[7],q[8];
sdg q[2];
cx q[5],q[9];
u1(3.7701917) q[3];
x q[4];
ccx q[0],q[2],q[7];
cu3(1.6092936,5.3927087,0.10450419) q[6],q[5];
ccx q[9],q[4],q[8];
tdg q[1];
t q[3];
cswap q[7],q[9],q[1];
cy q[3],q[5];
cu3(3.2341776,4.7903552,5.273644) q[0],q[8];
sdg q[2];
cu3(4.9032175,2.159943,1.6018035) q[6],q[4];
x q[7];
z q[6];
cz q[9],q[0];
cswap q[4],q[1],q[5];
rzz(0.6499311) q[3],q[8];
tdg q[2];
ccx q[4],q[7],q[0];
ccx q[1],q[3],q[2];
cx q[6],q[8];
cz q[5],q[9];
z q[6];
rzz(0.70886315) q[4],q[0];
tdg q[7];
y q[5];
u2(0.99024112,0.95560402) q[8];
crz(5.5835774) q[9],q[2];
sdg q[3];
ry(1.2690527) q[1];
ccx q[5],q[3],q[8];
cswap q[7],q[9],q[2];
cx q[6],q[0];
crz(4.6284499) q[1],q[4];
tdg q[3];
rz(3.4359805) q[5];
cswap q[8],q[0],q[1];
cy q[7],q[6];
rz(4.9961907) q[9];
u3(4.8250432,1.1803807,4.7801841) q[4];
ry(3.537762) q[2];
cx q[4],q[1];
t q[2];
cswap q[7],q[8],q[0];
z q[5];
cswap q[6],q[3],q[9];
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
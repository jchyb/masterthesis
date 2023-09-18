OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
u1(3.3839618) q[2];
u1(3.1458374) q[3];
ccx q[8],q[4],q[5];
cz q[6],q[0];
cx q[9],q[7];
y q[1];
cswap q[2],q[6],q[3];
ry(3.1463887) q[7];
ccx q[9],q[1],q[0];
u1(0.43763775) q[4];
tdg q[8];
ry(1.7651714) q[5];
s q[1];
y q[4];
ccx q[3],q[7],q[5];
u3(5.2545095,3.4148549,4.2167614) q[2];
cswap q[9],q[8],q[6];
tdg q[0];
rzz(0.77024216) q[7],q[6];
cswap q[9],q[0],q[5];
sdg q[4];
cy q[1],q[8];
cu1(2.279654) q[2],q[3];
t q[7];
cswap q[0],q[6],q[8];
cz q[1],q[3];
cu3(0.23332369,3.9534649,6.0319236) q[4],q[9];
id q[5];
rx(2.7661894) q[2];
cu1(4.8188324) q[2],q[3];
cswap q[8],q[4],q[9];
rzz(4.758191) q[1],q[7];
cswap q[6],q[5],q[0];
ccx q[4],q[8],q[6];
cx q[7],q[0];
cswap q[9],q[2],q[1];
cx q[5],q[3];
cu1(1.6602842) q[8],q[3];
crz(1.1803184) q[0],q[9];
rz(3.0339638) q[2];
ccx q[1],q[6],q[5];
cu3(2.7132291,1.0053563,2.2578251) q[7],q[4];
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
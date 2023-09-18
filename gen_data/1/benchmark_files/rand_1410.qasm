OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
sdg q[4];
crz(1.1701157) q[9],q[8];
cswap q[3],q[5],q[2];
cswap q[6],q[7],q[1];
s q[0];
ccx q[5],q[9],q[0];
s q[6];
cz q[4],q[2];
h q[8];
cx q[3],q[1];
u3(0.70211864,4.5815595,3.597338) q[7];
ch q[9],q[3];
cswap q[0],q[2],q[8];
t q[1];
ccx q[7],q[4],q[5];
ry(6.1616803) q[6];
cx q[1],q[0];
ccx q[7],q[8],q[2];
cswap q[4],q[6],q[9];
rz(1.0796378) q[3];
u2(4.8619686,6.1887124) q[5];
ccx q[1],q[2],q[0];
ccx q[4],q[6],q[7];
cu1(4.5073922) q[5],q[3];
rx(5.4425077) q[8];
u3(3.5745546,1.0492441,5.9768165) q[9];
sdg q[8];
ry(4.8941239) q[5];
u1(5.4521102) q[9];
u1(5.3637676) q[1];
id q[7];
ccx q[0],q[4],q[3];
t q[2];
h q[6];
t q[0];
ccx q[2],q[1],q[5];
swap q[9],q[8];
cz q[4],q[6];
cx q[3],q[7];
z q[1];
rz(1.548672) q[6];
ch q[8],q[9];
cu3(3.7397355,1.459745,1.9403916) q[2],q[5];
cz q[3],q[4];
cz q[7],q[0];
ch q[1],q[4];
rx(1.2551627) q[3];
u3(3.1878524,6.213823,1.3368522) q[0];
ch q[2],q[5];
y q[8];
x q[7];
cu1(1.4581403) q[6],q[9];
cswap q[0],q[9],q[7];
u2(4.2098578,1.0505895) q[3];
cswap q[8],q[2],q[1];
tdg q[5];
cu1(4.5431835) q[4],q[6];
ccx q[8],q[2],q[7];
tdg q[4];
crz(3.5313914) q[3],q[0];
cswap q[5],q[9],q[1];
h q[6];
cx q[7],q[8];
ccx q[1],q[0],q[9];
cu1(3.10182) q[4],q[2];
crz(1.4696292) q[6],q[5];
u3(0.15915692,4.6669828,2.594087) q[3];
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
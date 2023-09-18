OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cu3(3.6780701,3.7119379,4.293425) q[3],q[2];
crz(3.8269717) q[9],q[8];
ch q[7],q[4];
y q[0];
z q[1];
s q[6];
id q[5];
rz(6.2256808) q[8];
u1(2.8318339) q[1];
ccx q[0],q[9],q[4];
cswap q[6],q[2],q[3];
rz(6.1818655) q[5];
z q[7];
cswap q[4],q[6],q[7];
cu1(0.54568771) q[2],q[8];
ccx q[5],q[1],q[3];
y q[0];
rx(4.9412062) q[9];
cswap q[1],q[7],q[0];
rzz(1.9773357) q[8],q[9];
ccx q[2],q[5],q[3];
cu3(4.4786155,4.9847676,5.8171757) q[6],q[4];
ccx q[3],q[4],q[9];
cu1(5.4351606) q[0],q[8];
cu3(5.067827,2.3080478,2.0543233) q[7],q[1];
s q[6];
crz(3.8119833) q[2],q[5];
cx q[3],q[8];
ccx q[9],q[0],q[4];
u1(4.2708865) q[2];
rz(3.025924) q[1];
s q[6];
t q[5];
ry(6.1268816) q[7];
rx(2.817709) q[1];
ccx q[8],q[0],q[5];
cswap q[4],q[9],q[6];
crz(2.049488) q[3],q[2];
x q[7];
cu3(0.7302533,1.1878616,1.8675936) q[4],q[6];
rzz(3.6272734) q[8],q[9];
cswap q[0],q[2],q[3];
swap q[1],q[5];
z q[7];
cu3(3.3313591,0.32751605,4.0586322) q[3],q[6];
ccx q[9],q[1],q[2];
cswap q[5],q[8],q[4];
sdg q[7];
u1(3.8100298) q[0];
rz(5.6551448) q[1];
cz q[7],q[9];
cy q[4],q[5];
ry(1.2620115) q[6];
cswap q[8],q[3],q[0];
h q[2];
ccx q[4],q[9],q[0];
cswap q[3],q[2],q[5];
crz(0.97786701) q[7],q[8];
sdg q[1];
rz(4.9319108) q[6];
ccx q[4],q[1],q[3];
ccx q[9],q[6],q[2];
cz q[8],q[5];
cu3(0.13013756,2.3526188,0.69615423) q[7],q[0];
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
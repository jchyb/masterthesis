OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cu1(3.3399718) q[8],q[7];
cy q[6],q[3];
h q[2];
s q[1];
rzz(4.0798409) q[5],q[0];
tdg q[4];
h q[9];
cz q[3],q[8];
cswap q[7],q[6],q[9];
sdg q[4];
cy q[2],q[0];
t q[1];
h q[5];
cz q[4],q[8];
u3(3.9236155,1.5631532,0.56657685) q[1];
cswap q[3],q[2],q[5];
swap q[7],q[9];
cu3(0.70771948,1.8702507,2.435895) q[6],q[0];
rzz(5.1391738) q[6],q[7];
ccx q[0],q[3],q[8];
cswap q[9],q[2],q[1];
swap q[4],q[5];
cz q[3],q[4];
h q[5];
cx q[2],q[1];
u1(3.177842) q[7];
cy q[8],q[9];
u1(2.1397103) q[0];
tdg q[6];
rzz(3.3067492) q[3],q[7];
cy q[2],q[1];
sdg q[8];
ccx q[9],q[0],q[6];
u3(5.3830384,4.185463,1.4506192) q[5];
rz(4.7915568) q[4];
cu1(5.6142926) q[2],q[1];
cy q[8],q[9];
u3(0.26552339,1.3163625,2.7953203) q[5];
cswap q[4],q[7],q[6];
h q[0];
rx(5.6148281) q[3];
z q[3];
cx q[8],q[5];
u3(1.5263014,2.3692923,4.4445045) q[1];
y q[7];
u3(3.0791808,1.5058606,3.70997) q[2];
ccx q[0],q[4],q[6];
u1(0.14953244) q[9];
ch q[5],q[1];
ch q[7],q[4];
u1(4.9313006) q[2];
h q[8];
cu3(1.9255245,0.21540138,4.2544445) q[9],q[3];
cx q[6],q[0];
cy q[8],q[0];
cu3(0.0023296093,4.3475346,1.3157825) q[7],q[5];
rz(6.0780459) q[6];
x q[3];
cswap q[2],q[9],q[4];
rx(0.40092416) q[1];
cu3(5.6723152,5.8384946,3.6082159) q[3],q[8];
cswap q[4],q[5],q[6];
ccx q[1],q[9],q[7];
ch q[2],q[0];
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
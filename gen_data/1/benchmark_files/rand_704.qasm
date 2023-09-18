OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
sdg q[6];
ccx q[7],q[5],q[4];
ch q[0],q[2];
swap q[1],q[3];
id q[9];
rz(5.315166) q[8];
cx q[3],q[9];
swap q[4],q[1];
rz(6.0818581) q[8];
cu1(1.2921258) q[7],q[0];
ccx q[6],q[2],q[5];
z q[1];
cu1(2.9649956) q[5],q[7];
ccx q[6],q[8],q[2];
swap q[3],q[4];
cx q[9],q[0];
cswap q[9],q[2],q[7];
t q[4];
cu1(5.1609147) q[0],q[3];
cx q[8],q[6];
cz q[1],q[5];
cx q[1],q[9];
u3(1.8416401,4.8072053,0.66186389) q[8];
cswap q[5],q[7],q[4];
ccx q[6],q[2],q[0];
u1(3.3383568) q[3];
crz(0.97418963) q[7],q[8];
ccx q[3],q[9],q[0];
tdg q[5];
x q[2];
s q[1];
ch q[6],q[4];
crz(4.8635911) q[4],q[7];
rz(4.9456892) q[0];
u3(5.3397305,3.878131,1.3533877) q[8];
s q[6];
ry(5.8688223) q[5];
t q[9];
ry(3.551308) q[1];
cy q[2],q[3];
ccx q[5],q[6],q[2];
cx q[1],q[0];
rzz(6.243741) q[4],q[9];
cy q[3],q[8];
id q[7];
cu1(1.9006048) q[9],q[0];
ccx q[8],q[3],q[2];
cu3(5.807445,2.3317676,0.44522306) q[1],q[7];
rzz(2.5713965) q[6],q[5];
rx(3.1351256) q[4];
ccx q[6],q[4],q[0];
cx q[1],q[8];
u1(1.5995619) q[3];
rz(5.9950558) q[9];
ccx q[5],q[2],q[7];
cu3(4.8167611,1.3567882,4.6122537) q[6],q[5];
t q[2];
cswap q[9],q[8],q[3];
cy q[4],q[1];
rz(0.95417632) q[0];
ry(5.1910137) q[7];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[7],q[4],q[2];
ccx q[5],q[9],q[1];
crz(3.8560303) q[0],q[6];
ch q[8],q[3];
cswap q[8],q[5],q[4];
cz q[6],q[3];
cswap q[0],q[9],q[2];
rz(2.416992) q[1];
ry(3.5254009) q[7];
rzz(2.1388251) q[9],q[3];
y q[2];
x q[8];
ry(1.9166407) q[0];
cz q[1],q[6];
s q[4];
crz(2.8121972) q[5],q[7];
sdg q[2];
y q[6];
ccx q[1],q[9],q[7];
cx q[3],q[0];
swap q[4],q[8];
u1(4.7660792) q[5];
cswap q[9],q[3],q[0];
crz(2.9212471) q[4],q[6];
rx(5.0112975) q[2];
crz(5.2896944) q[1],q[5];
ch q[7],q[8];
id q[5];
swap q[3],q[9];
rzz(5.8014017) q[1],q[2];
swap q[7],q[4];
u3(2.1088033,3.3964427,1.7006679) q[6];
cx q[8],q[0];
ccx q[5],q[0],q[1];
cy q[6],q[4];
z q[7];
cu1(3.1019239) q[3],q[9];
rx(5.7910535) q[8];
tdg q[2];
y q[2];
ccx q[9],q[3],q[6];
crz(5.8071657) q[1],q[5];
cu3(2.2957121,4.6386786,5.644069) q[8],q[7];
s q[4];
rx(3.9129595) q[0];
ccx q[6],q[0],q[9];
ccx q[5],q[4],q[3];
cswap q[2],q[1],q[8];
rx(2.9923715) q[7];
cx q[5],q[4];
cu1(3.0913385) q[2],q[8];
ccx q[0],q[3],q[9];
ccx q[7],q[6],q[1];
cy q[1],q[2];
s q[9];
cy q[7],q[3];
t q[4];
ch q[8],q[5];
y q[6];
tdg q[0];
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

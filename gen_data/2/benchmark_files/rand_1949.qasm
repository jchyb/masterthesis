OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cz q[6],q[2];
rzz(5.0541052) q[1],q[0];
y q[8];
rx(5.7935145) q[3];
crz(4.6405075) q[7],q[5];
u3(1.4311036,3.0590378,5.1803209) q[4];
s q[9];
cx q[4],q[7];
cz q[6],q[2];
cswap q[1],q[5],q[0];
ccx q[3],q[8],q[9];
cswap q[9],q[6],q[1];
y q[5];
cu1(2.0084172) q[7],q[3];
u3(4.6718559,5.4695295,4.7011599) q[0];
swap q[4],q[2];
x q[8];
cy q[2],q[3];
rz(1.4788646) q[8];
u3(5.1340629,5.1346224,2.3902358) q[4];
rx(5.8109314) q[0];
ccx q[1],q[7],q[5];
cy q[9],q[6];
u3(4.7690708,1.9887548,5.0007408) q[5];
y q[9];
cu1(2.9094748) q[8],q[6];
s q[4];
sdg q[2];
cu1(1.7560743) q[0],q[7];
u2(3.6681414,3.6937863) q[3];
u2(2.8752219,0.20951642) q[1];
t q[0];
ccx q[3],q[7],q[8];
t q[4];
ccx q[1],q[2],q[5];
u1(4.9514813) q[6];
x q[9];
h q[0];
cu1(4.5099575) q[2],q[9];
cx q[8],q[1];
crz(0.61174381) q[6],q[7];
rzz(6.1924361) q[4],q[5];
z q[3];
tdg q[8];
ccx q[3],q[6],q[0];
u1(1.5809609) q[1];
y q[4];
ccx q[2],q[9],q[7];
z q[5];
u1(2.7929298) q[3];
ccx q[7],q[5],q[8];
y q[1];
t q[0];
cz q[6],q[2];
ry(3.3973953) q[4];
ry(3.4444016) q[9];
rzz(1.198954) q[4],q[3];
cswap q[5],q[7],q[1];
swap q[8],q[6];
cy q[0],q[9];
rz(5.3449225) q[2];
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
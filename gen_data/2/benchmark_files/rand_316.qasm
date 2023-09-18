OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ry(2.3429988) q[0];
cswap q[8],q[6],q[2];
cswap q[4],q[1],q[5];
crz(0.14926456) q[7],q[9];
t q[3];
ccx q[5],q[3],q[6];
cu3(5.3448393,0.94316764,3.1727415) q[0],q[7];
cz q[9],q[8];
crz(2.9313687) q[4],q[1];
s q[2];
y q[5];
rzz(1.8540876) q[7],q[6];
rx(4.2735427) q[3];
cu3(1.149401,6.0469735,5.7512716) q[9],q[2];
ch q[8],q[0];
cy q[4],q[1];
ccx q[3],q[0],q[5];
ccx q[9],q[6],q[2];
ccx q[1],q[7],q[4];
h q[8];
rzz(2.8635626) q[2],q[6];
cu1(3.765632) q[7],q[9];
cu1(2.370959) q[3],q[5];
y q[1];
cz q[0],q[8];
h q[4];
y q[0];
cu1(2.3345206) q[2],q[3];
cu3(4.2265351,1.1389033,1.9107081) q[8],q[7];
cz q[6],q[1];
s q[9];
sdg q[5];
rx(1.7212538) q[4];
rx(6.1252368) q[6];
tdg q[9];
s q[3];
ch q[4],q[1];
cz q[0],q[5];
rx(2.3063921) q[7];
cz q[2],q[8];
u1(3.0879853) q[9];
u1(2.8833453) q[7];
z q[4];
cx q[5],q[1];
cx q[3],q[0];
cu1(2.2628953) q[2],q[8];
u2(0.69153855,4.2239303) q[6];
u1(4.4283385) q[1];
u3(5.2443594,4.986055,0.54017269) q[7];
cswap q[0],q[5],q[4];
rz(2.2772459) q[3];
ccx q[9],q[2],q[8];
u2(2.9378545,6.2393302) q[6];
rz(4.8084508) q[4];
cswap q[0],q[6],q[2];
cy q[7],q[5];
crz(2.1817763) q[8],q[9];
swap q[1],q[3];
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
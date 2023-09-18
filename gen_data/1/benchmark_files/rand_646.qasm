OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[7],q[4],q[5];
rzz(5.7026887) q[0],q[2];
id q[9];
cswap q[1],q[3],q[8];
id q[6];
rz(5.445695) q[6];
z q[4];
rx(0.96392092) q[3];
y q[9];
swap q[2],q[8];
s q[0];
rx(5.9564543) q[5];
cx q[1],q[7];
swap q[7],q[6];
crz(4.1568918) q[5],q[1];
crz(0.15701565) q[0],q[8];
cswap q[2],q[3],q[9];
sdg q[4];
ccx q[6],q[2],q[4];
ccx q[5],q[8],q[0];
cu1(2.9520259) q[3],q[1];
u1(5.7411698) q[7];
s q[9];
cu3(5.5186989,5.9313343,5.2245532) q[1],q[6];
sdg q[7];
ccx q[9],q[2],q[3];
id q[0];
ccx q[5],q[4],q[8];
crz(3.5394396) q[4],q[1];
ccx q[3],q[6],q[2];
crz(3.0827191) q[7],q[0];
cswap q[5],q[8],q[9];
rzz(1.3694643) q[2],q[6];
rx(6.1331972) q[9];
sdg q[5];
cu3(3.2722811,0.065890525,3.9174332) q[0],q[4];
tdg q[7];
ch q[1],q[8];
tdg q[3];
u1(2.2644133) q[5];
s q[4];
rz(3.9739607) q[7];
h q[8];
ch q[3],q[6];
u1(2.792942) q[2];
u2(2.5638053,2.1090058) q[0];
cx q[1],q[9];
cswap q[3],q[4],q[2];
cu3(0.82994066,2.4019631,1.8585577) q[0],q[1];
ccx q[7],q[9],q[5];
rx(1.980284) q[8];
s q[6];
sdg q[5];
cswap q[7],q[9],q[2];
cswap q[6],q[8],q[3];
ch q[4],q[0];
s q[1];
cu3(0.23200939,4.9488876,6.2824868) q[6],q[9];
ccx q[7],q[8],q[5];
ccx q[1],q[3],q[2];
crz(5.0642826) q[4],q[0];
y q[0];
ccx q[1],q[4],q[6];
t q[5];
crz(4.1375214) q[7],q[9];
crz(4.0059084) q[8],q[2];
u1(5.6769319) q[3];
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
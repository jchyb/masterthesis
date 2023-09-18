OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[9],q[0],q[4];
u2(2.4751261,5.127953) q[3];
s q[2];
swap q[7],q[8];
ccx q[5],q[1],q[6];
cz q[0],q[1];
swap q[6],q[3];
cswap q[4],q[7],q[9];
t q[2];
u3(4.0190848,5.9973554,4.0396694) q[5];
u3(0.9185482,3.4079535,0.7466209) q[8];
ccx q[5],q[9],q[0];
cx q[3],q[1];
s q[4];
cz q[2],q[7];
u3(4.8589361,0.65283365,4.0401076) q[8];
h q[6];
swap q[8],q[0];
ccx q[4],q[1],q[9];
t q[6];
cswap q[5],q[2],q[7];
u3(4.8584619,5.8125541,4.9025117) q[3];
cx q[7],q[6];
cswap q[1],q[9],q[0];
ccx q[8],q[5],q[4];
cy q[3],q[2];
cy q[3],q[2];
ccx q[9],q[7],q[4];
x q[1];
ccx q[0],q[6],q[8];
x q[5];
ch q[9],q[6];
rx(0.59050522) q[1];
cswap q[4],q[2],q[0];
cswap q[7],q[3],q[8];
rz(4.0358325) q[5];
cu1(3.8954091) q[7],q[5];
swap q[4],q[1];
ccx q[0],q[9],q[2];
x q[8];
id q[3];
t q[6];
u3(3.869938,2.9912176,4.8871102) q[8];
crz(1.9831366) q[2],q[1];
ccx q[4],q[5],q[6];
cswap q[3],q[0],q[9];
s q[7];
cy q[7],q[8];
ccx q[4],q[1],q[3];
cz q[5],q[6];
rzz(5.4412775) q[9],q[0];
sdg q[2];
z q[3];
y q[8];
u1(4.9307473) q[7];
ccx q[5],q[1],q[4];
cu3(2.6660669,1.5221391,3.302358) q[9],q[2];
z q[6];
rz(0.094322063) q[0];
cu3(1.6979026,4.7672521,5.5693604) q[1],q[4];
crz(1.7866334) q[2],q[7];
ccx q[5],q[0],q[3];
ccx q[9],q[6],q[8];
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
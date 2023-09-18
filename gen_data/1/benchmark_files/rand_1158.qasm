OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[4],q[8],q[9];
ry(5.9630416) q[1];
id q[3];
ccx q[2],q[0],q[5];
crz(1.7837621) q[7],q[6];
cu1(3.2276557) q[4],q[3];
ry(6.1670974) q[2];
ccx q[7],q[1],q[0];
cu1(5.1381818) q[6],q[9];
u2(2.0234725,1.1148313) q[8];
tdg q[5];
cz q[6],q[8];
cswap q[2],q[5],q[3];
s q[9];
rzz(0.69985773) q[0],q[1];
swap q[7],q[4];
sdg q[1];
cswap q[8],q[5],q[3];
ccx q[2],q[0],q[7];
y q[9];
t q[6];
rz(6.1733944) q[4];
ch q[4],q[1];
rx(0.69454213) q[3];
id q[6];
u2(4.0769044,2.4683801) q[7];
swap q[8],q[0];
crz(2.0089649) q[2],q[5];
id q[9];
cu3(6.1384773,3.1561072,0.69466689) q[9],q[4];
ccx q[2],q[1],q[5];
h q[3];
t q[0];
rzz(2.4604363) q[7],q[6];
t q[8];
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
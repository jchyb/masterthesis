OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
u1(4.9936819) q[8];
ccx q[4],q[5],q[3];
u1(2.1609472) q[7];
swap q[0],q[6];
ccx q[2],q[9],q[1];
y q[6];
cu3(0.12434823,4.8054711,2.5926043) q[7],q[2];
cswap q[1],q[4],q[9];
s q[5];
cswap q[3],q[0],q[8];
tdg q[3];
cswap q[8],q[0],q[1];
ry(2.2926475) q[9];
rzz(1.9574906) q[4],q[7];
h q[5];
ch q[2],q[6];
cswap q[1],q[7],q[5];
ccx q[8],q[2],q[0];
ccx q[6],q[9],q[3];
sdg q[4];
ccx q[9],q[4],q[7];
cy q[2],q[5];
cswap q[8],q[3],q[6];
cu3(2.5402154,1.8049825,4.8477447) q[1],q[0];
rzz(6.0226367) q[2],q[0];
cx q[6],q[4];
tdg q[7];
id q[3];
id q[1];
ccx q[8],q[5],q[9];
swap q[6],q[1];
cy q[4],q[8];
cy q[0],q[9];
cx q[3],q[7];
crz(3.3301591) q[5],q[2];
ccx q[6],q[0],q[4];
swap q[8],q[7];
s q[3];
cy q[9],q[2];
swap q[1],q[5];
swap q[0],q[6];
tdg q[3];
h q[9];
cz q[8],q[1];
id q[2];
cx q[7],q[5];
h q[4];
cu1(0.32082153) q[9],q[1];
cu3(0.94595261,2.9555062,0.61060965) q[2],q[8];
rz(0.72202028) q[7];
ccx q[3],q[6],q[0];
u1(4.6803932) q[5];
h q[4];
crz(2.7060318) q[4],q[6];
cu1(5.2042037) q[1],q[7];
crz(1.7715139) q[5],q[9];
cswap q[0],q[8],q[2];
z q[3];
x q[2];
s q[1];
z q[3];
cswap q[4],q[0],q[7];
cz q[8],q[6];
t q[9];
ry(4.850566) q[5];
u1(4.2194532) q[8];
ccx q[0],q[4],q[5];
ry(2.2070312) q[9];
u2(3.3639635,4.0852856) q[1];
h q[2];
cswap q[7],q[6],q[3];
cy q[8],q[2];
ccx q[5],q[0],q[4];
ccx q[3],q[7],q[1];
rzz(2.6334696) q[9],q[6];
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
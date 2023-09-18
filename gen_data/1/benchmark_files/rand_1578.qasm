OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ch q[9],q[8];
crz(5.1449118) q[7],q[1];
u3(0.19980675,3.1641859,2.5637683) q[6];
rzz(0.98491308) q[5],q[0];
cswap q[2],q[4],q[3];
h q[3];
z q[2];
ccx q[1],q[4],q[6];
cz q[7],q[5];
cswap q[8],q[0],q[9];
ch q[2],q[5];
cz q[7],q[6];
ccx q[4],q[0],q[8];
cx q[3],q[9];
u2(3.9204796,2.5006573) q[1];
x q[8];
cswap q[6],q[2],q[7];
rzz(3.0098945) q[5],q[9];
cswap q[1],q[3],q[4];
id q[0];
cy q[9],q[3];
ry(1.8210887) q[4];
rx(3.1261062) q[2];
cy q[0],q[1];
ccx q[7],q[5],q[6];
sdg q[8];
crz(2.9425142) q[1],q[5];
cswap q[4],q[3],q[0];
crz(2.0138526) q[9],q[2];
cswap q[6],q[8],q[7];
h q[5];
sdg q[2];
cswap q[4],q[0],q[6];
cy q[3],q[8];
cswap q[9],q[7],q[1];
rz(2.621425) q[0];
z q[9];
y q[1];
crz(5.1433913) q[6],q[7];
rz(2.849236) q[5];
ccx q[4],q[8],q[2];
x q[3];
t q[9];
cu3(4.8222823,1.6079646,4.9675647) q[3],q[5];
cswap q[7],q[8],q[2];
x q[0];
ccx q[1],q[4],q[6];
rz(1.3677487) q[9];
t q[7];
y q[4];
ccx q[2],q[6],q[3];
rz(3.9589477) q[5];
rz(1.7007062) q[0];
rzz(3.1276223) q[8],q[1];
crz(0.16967132) q[8],q[2];
s q[6];
tdg q[5];
cswap q[4],q[0],q[9];
cswap q[3],q[1],q[7];
cswap q[9],q[2],q[4];
sdg q[1];
cswap q[8],q[6],q[3];
cswap q[7],q[0],q[5];
u2(2.7884435,0.34322047) q[8];
crz(3.0369494) q[0],q[1];
ry(4.6720608) q[5];
ccx q[2],q[7],q[6];
cswap q[3],q[9],q[4];
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
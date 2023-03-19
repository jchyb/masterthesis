OPENQASM 2.0;
include "qelib1.inc";
qreg q[8];
creg c[8];
u3(5.4840606,3.980777,1.4915416) q[0];
ccx q[1],q[3],q[5];
cswap q[4],q[6],q[2];
t q[7];
ccx q[0],q[7],q[6];
swap q[5],q[3];
ccx q[4],q[1],q[2];
h q[2];
ccx q[3],q[5],q[4];
u3(4.8863505,0.38578176,2.7752677) q[6];
cswap q[1],q[0],q[7];
cu1(0.42699764) q[3],q[2];
y q[0];
sdg q[6];
cswap q[1],q[5],q[7];
u2(2.8962387,2.6688669) q[4];
tdg q[5];
ccx q[0],q[7],q[2];
id q[1];
cz q[3],q[4];
s q[6];
cswap q[2],q[3],q[7];
swap q[5],q[6];
ch q[0],q[1];
rz(5.8092954) q[4];
cu3(0.88730692,1.1477449,4.0701779) q[3],q[1];
ccx q[7],q[2],q[0];
cz q[6],q[4];
y q[5];
ccx q[4],q[0],q[1];
ccx q[6],q[7],q[2];
sdg q[5];
id q[3];
swap q[1],q[0];
ccx q[7],q[5],q[2];
ccx q[6],q[3],q[4];
ccx q[0],q[1],q[5];
cswap q[6],q[7],q[3];
u3(1.8227044,4.2856755,2.8735146) q[2];
rz(2.8527384) q[4];
cswap q[4],q[0],q[6];
cswap q[1],q[3],q[2];
s q[7];
sdg q[5];
s q[5];
ccx q[0],q[2],q[7];
u3(4.6137593,2.3557235,3.5712516) q[1];
ccx q[4],q[3],q[6];
cswap q[4],q[1],q[7];
ch q[3],q[0];
crz(5.1423363) q[2],q[5];
ry(2.6367594) q[6];
rz(1.7573071) q[3];
ccx q[6],q[5],q[0];
x q[1];
ch q[2],q[7];
rz(0.57380823) q[4];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];
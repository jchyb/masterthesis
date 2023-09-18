OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[8],q[1],q[4];
cy q[7],q[5];
cswap q[2],q[6],q[0];
id q[3];
y q[9];
z q[9];
cswap q[7],q[8],q[3];
cx q[6],q[2];
cu1(0.61708656) q[1],q[4];
cz q[5],q[0];
ccx q[8],q[0],q[7];
cu3(3.1041415,3.6888733,2.4819121) q[2],q[3];
id q[9];
cu3(1.0224297,2.2123962,4.4450385) q[6],q[1];
z q[4];
ry(5.7776601) q[5];
rz(1.7375966) q[4];
cswap q[5],q[0],q[7];
cswap q[8],q[2],q[9];
ccx q[6],q[1],q[3];
sdg q[0];
cswap q[2],q[5],q[9];
ccx q[6],q[8],q[1];
id q[4];
cu1(2.0495571) q[3],q[7];
ccx q[4],q[5],q[2];
cswap q[9],q[3],q[8];
cu1(2.4910806) q[6],q[1];
id q[0];
h q[7];
cy q[4],q[7];
cy q[6],q[2];
h q[3];
cswap q[8],q[5],q[9];
crz(4.2318726) q[1],q[0];
h q[3];
ccx q[4],q[9],q[7];
crz(2.2590669) q[1],q[0];
cswap q[8],q[6],q[2];
rz(2.1771642) q[5];
ch q[0],q[8];
swap q[6],q[4];
t q[1];
ccx q[7],q[5],q[3];
tdg q[2];
rx(4.006684) q[9];
cswap q[0],q[1],q[4];
u2(1.4207214,2.6407256) q[8];
rx(0.28765244) q[7];
cswap q[3],q[9],q[5];
crz(4.0847327) q[6],q[2];
cswap q[6],q[8],q[0];
cx q[1],q[3];
cswap q[5],q[2],q[9];
ch q[4],q[7];
ry(1.373179) q[9];
ccx q[7],q[8],q[1];
crz(4.0715158) q[4],q[2];
swap q[3],q[5];
ry(6.2696046) q[0];
h q[6];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rx(4.3986766) q[9];
cx q[8],q[1];
cswap q[0],q[2],q[3];
cx q[4],q[5];
z q[7];
id q[6];
ccx q[4],q[8],q[3];
u2(5.5063641,1.6765514) q[9];
tdg q[7];
id q[5];
h q[6];
ch q[0],q[1];
rx(3.7162806) q[2];
u3(3.7308336,4.2773058,4.1586284) q[8];
ry(2.7325864) q[0];
rx(3.2171445) q[4];
rx(4.3368542) q[3];
cz q[5],q[1];
cu3(1.8407318,1.8915102,4.0607935) q[9],q[6];
cu3(0.80827694,5.2132544,4.5506818) q[7],q[2];
ccx q[3],q[1],q[8];
cz q[6],q[7];
cx q[4],q[0];
cswap q[5],q[2],q[9];
x q[8];
rzz(2.694419) q[7],q[3];
ccx q[2],q[5],q[9];
u3(5.9451087,0.29378712,6.153263) q[6];
rz(5.6150502) q[0];
cu3(3.3912563,2.4476593,3.6294013) q[4],q[1];
u3(2.8509251,4.5653249,2.0370373) q[5];
cu3(5.4866002,0.99318771,4.6023474) q[2],q[4];
rz(0.042909307) q[9];
cy q[0],q[7];
h q[6];
cx q[1],q[8];
y q[3];
swap q[9],q[0];
rz(4.4547663) q[1];
ccx q[4],q[5],q[6];
cswap q[7],q[8],q[3];
h q[2];
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
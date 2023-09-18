OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
crz(3.0771132) q[4],q[7];
ccx q[0],q[5],q[1];
swap q[9],q[2];
u1(0.88342566) q[3];
h q[6];
ry(2.6737473) q[8];
cz q[3],q[9];
ccx q[7],q[8],q[0];
crz(3.1538318) q[5],q[4];
x q[2];
ch q[6],q[1];
ccx q[1],q[3],q[4];
cswap q[6],q[8],q[9];
u1(4.3147503) q[7];
cswap q[5],q[0],q[2];
crz(2.8758749) q[4],q[5];
z q[9];
cswap q[6],q[7],q[0];
cy q[8],q[3];
swap q[1],q[2];
id q[2];
cu3(4.3202764,3.6532925,5.0006059) q[4],q[7];
u2(0.4043291,2.4065618) q[9];
cswap q[0],q[6],q[8];
ry(3.2858947) q[3];
rx(3.924102) q[1];
id q[5];
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
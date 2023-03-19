OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
creg c[6];
z q[4];
cz q[3],q[2];
cswap q[1],q[0],q[5];
ch q[3],q[0];
u3(1.7570022,2.3022971,1.9200162) q[2];
s q[4];
crz(2.0183185) q[1],q[5];
cu1(3.5444016) q[2],q[5];
cswap q[3],q[4],q[0];
ry(4.3196229) q[1];
u3(6.0420514,3.9074035,4.2140052) q[3];
cz q[5],q[4];
ccx q[0],q[1],q[2];
cy q[4],q[5];
ccx q[2],q[3],q[0];
rx(2.5855989) q[1];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];

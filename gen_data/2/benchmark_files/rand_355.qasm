OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[6],q[4],q[5];
swap q[2],q[0];
cswap q[7],q[1],q[8];
cu1(1.8962922) q[9],q[3];
ry(1.7334674) q[9];
cy q[0],q[8];
u1(4.5259941) q[5];
cu3(2.4147016,4.6552289,5.7799184) q[3],q[1];
crz(1.5678898) q[4],q[7];
tdg q[6];
x q[2];
ccx q[4],q[7],q[0];
z q[2];
ccx q[3],q[8],q[9];
ccx q[5],q[1],q[6];
t q[5];
cx q[8],q[0];
ch q[6],q[7];
ch q[4],q[2];
cswap q[1],q[9],q[3];
u2(3.4707934,5.7692106) q[2];
cz q[7],q[9];
crz(6.2487477) q[1],q[0];
crz(0.78168657) q[3],q[4];
cy q[6],q[8];
u2(4.1801632,4.2476986) q[5];
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
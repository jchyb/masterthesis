OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ry(3.0879156) q[5];
cz q[8],q[1];
cy q[7],q[6];
u1(3.5727085) q[9];
ccx q[4],q[2],q[3];
u2(6.1936279,3.0467947) q[0];
cswap q[8],q[4],q[5];
tdg q[7];
cswap q[1],q[2],q[0];
swap q[3],q[9];
s q[6];
id q[5];
ccx q[0],q[2],q[7];
rzz(5.6566524) q[3],q[6];
t q[4];
cu1(4.4099526) q[1],q[8];
id q[9];
cswap q[8],q[9],q[6];
cswap q[2],q[0],q[7];
cu1(4.6045362) q[4],q[3];
tdg q[5];
ry(5.8521791) q[1];
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
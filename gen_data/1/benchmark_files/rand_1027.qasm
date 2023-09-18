OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[9],q[2],q[7];
rz(5.6293665) q[1];
cx q[0],q[5];
cswap q[4],q[8],q[6];
h q[3];
cz q[3],q[0];
ch q[8],q[6];
rz(1.1251739) q[1];
ccx q[5],q[2],q[4];
rz(0.86436354) q[9];
h q[7];
ccx q[2],q[1],q[5];
cy q[8],q[6];
crz(2.2864166) q[7],q[0];
rzz(1.0904588) q[4],q[3];
u1(5.93078) q[9];
ccx q[0],q[1],q[4];
u1(6.002419) q[3];
cswap q[7],q[6],q[9];
cswap q[2],q[8],q[5];
ccx q[2],q[8],q[7];
id q[5];
t q[9];
tdg q[1];
cy q[0],q[4];
ch q[3],q[6];
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
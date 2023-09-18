OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[7],q[0],q[9];
cu1(5.1871002) q[1],q[5];
ccx q[6],q[2],q[4];
swap q[3],q[8];
ch q[2],q[6];
t q[3];
cswap q[0],q[4],q[5];
ccx q[1],q[8],q[7];
id q[9];
cswap q[3],q[5],q[2];
rzz(2.5719382) q[4],q[1];
ccx q[7],q[9],q[0];
cy q[6],q[8];
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
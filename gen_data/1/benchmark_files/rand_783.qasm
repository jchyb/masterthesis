OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cu1(5.4122789) q[9],q[1];
cswap q[4],q[8],q[2];
swap q[0],q[3];
ccx q[5],q[6],q[7];
sdg q[3];
cy q[8],q[5];
tdg q[0];
ccx q[6],q[9],q[1];
ccx q[4],q[7],q[2];
cswap q[0],q[3],q[5];
rzz(1.7641373) q[4],q[2];
cy q[6],q[1];
id q[8];
ch q[7],q[9];
swap q[4],q[7];
cswap q[0],q[3],q[2];
cswap q[6],q[1],q[9];
cu3(4.0879793,3.5668907,3.9772971) q[5],q[8];
cu1(1.5775498) q[3],q[0];
ch q[6],q[9];
cswap q[5],q[4],q[2];
cswap q[1],q[7],q[8];
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
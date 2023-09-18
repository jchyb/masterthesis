OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ry(1.9144975) q[7];
y q[5];
cswap q[4],q[6],q[1];
cz q[9],q[2];
ccx q[8],q[0],q[3];
s q[4];
cy q[7],q[5];
rx(1.0879061) q[1];
ccx q[8],q[6],q[2];
cswap q[9],q[3],q[0];
ccx q[5],q[6],q[7];
ccx q[4],q[8],q[1];
rzz(2.4904807) q[0],q[3];
swap q[9],q[2];
ccx q[7],q[4],q[6];
s q[2];
crz(6.1945223) q[8],q[3];
u3(5.9319479,3.8761906,4.0911328) q[5];
ccx q[1],q[9],q[0];
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
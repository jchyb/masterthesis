OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
creg c[7];
y q[5];
cswap q[2],q[6],q[3];
cz q[4],q[1];
rz(0.64679945) q[0];
ccx q[5],q[3],q[4];
swap q[0],q[6];
cz q[1],q[2];
cy q[1],q[0];
crz(5.3041988) q[4],q[2];
ccx q[3],q[6],q[5];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[2],q[0],q[1];
cswap q[6],q[9],q[4];
cz q[5],q[7];
cu3(3.7829576,3.1878445,2.0815131) q[8],q[3];
x q[5];
ccx q[8],q[9],q[4];
cx q[6],q[2];
ccx q[3],q[0],q[1];
y q[7];
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

OPENQASM 2.0;
include "qelib1.inc";
qreg q[9];
creg c[9];
s q[8];
cu3(4.9863138,1.433913,1.7984645) q[7],q[5];
x q[2];
cswap q[4],q[1],q[6];
swap q[3],q[0];
ccx q[1],q[2],q[3];
cswap q[5],q[4],q[8];
cswap q[7],q[0],q[6];
crz(0.89720653) q[2],q[1];
cu3(2.4315233,5.7707871,5.3284292) q[6],q[5];
ccx q[8],q[3],q[7];
cx q[0],q[4];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];
measure q[8] -> c[8];
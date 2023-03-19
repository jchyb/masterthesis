OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg c[2];
cu3(2.7692953,0.36384475,5.0325712) q[1],q[0];
cx q[1],q[0];
crz(5.1525564) q[0],q[1];
measure q[0] -> c[0];
measure q[1] -> c[1];

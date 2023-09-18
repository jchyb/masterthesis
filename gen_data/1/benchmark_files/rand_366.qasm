OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ch q[8],q[9];
ccx q[1],q[2],q[0];
cy q[3],q[5];
crz(0.093736102) q[4],q[7];
u3(5.3604682,5.6416439,4.2829099) q[6];
cx q[2],q[1];
crz(1.8853347) q[9],q[3];
ccx q[7],q[5],q[6];
ccx q[0],q[4],q[8];
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
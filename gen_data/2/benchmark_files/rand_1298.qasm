OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[6],q[5],q[7];
u3(6.0772978,2.9225891,4.4070974) q[3];
crz(0.90034784) q[4],q[9];
u3(2.5220055,1.9830076,1.3903946) q[1];
cu1(2.5738808) q[0],q[8];
id q[2];
ccx q[8],q[3],q[9];
ccx q[1],q[2],q[6];
sdg q[0];
ch q[7],q[5];
id q[4];
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
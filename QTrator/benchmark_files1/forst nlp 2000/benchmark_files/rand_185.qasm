OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
z q[3];
rz(5.9352403) q[7];
cy q[4],q[5];
tdg q[0];
cu3(2.888613,5.7957728,2.3469673) q[1],q[2];
crz(3.5305169) q[9],q[8];
id q[6];
ccx q[6],q[9],q[3];
cx q[7],q[2];
tdg q[4];
crz(2.3775651) q[1],q[0];
u2(3.356836,3.5837088) q[5];
rz(5.9014247) q[8];
ch q[0],q[5];
ccx q[2],q[1],q[9];
ccx q[3],q[6],q[8];
cu1(4.7689532) q[7],q[4];
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

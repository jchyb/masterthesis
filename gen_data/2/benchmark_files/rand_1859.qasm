OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[7],q[1],q[2];
crz(4.0285748) q[5],q[9];
crz(2.6788809) q[3],q[0];
sdg q[4];
ch q[6],q[8];
rz(0.74378248) q[3];
rz(5.7488457) q[5];
cu3(4.505372,4.1430058,2.2272523) q[1],q[9];
ch q[0],q[6];
u1(0.79646246) q[2];
rzz(4.4164335) q[7],q[8];
rx(1.4375693) q[4];
ccx q[5],q[1],q[7];
id q[0];
cswap q[8],q[6],q[3];
z q[4];
rx(3.4313045) q[2];
rz(4.8009555) q[9];
h q[7];
cswap q[6],q[4],q[5];
h q[9];
u2(5.3088658,5.8628822) q[3];
cu1(1.5705056) q[2],q[8];
swap q[0],q[1];
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
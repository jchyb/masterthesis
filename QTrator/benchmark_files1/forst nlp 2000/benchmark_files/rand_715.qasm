OPENQASM 2.0;
include "qelib1.inc";
qreg q[13];
creg c[13];
s q[7];
ccx q[1],q[6],q[12];
crz(2.2272372) q[3],q[10];
s q[5];
tdg q[4];
rx(1.5202302) q[0];
ccx q[11],q[9],q[2];
h q[8];
u2(1.7579984,6.1341947) q[12];
ccx q[4],q[5],q[6];
ch q[2],q[10];
s q[0];
cu3(1.513366,4.9005148,3.2885498) q[1],q[7];
cu3(3.2208891,5.4313734,5.1285087) q[11],q[9];
swap q[8],q[3];
rzz(0.6987906) q[8],q[6];
sdg q[12];
ccx q[10],q[9],q[2];
y q[11];
ccx q[1],q[7],q[3];
cu3(2.8914984,1.7619783,6.2634687) q[4],q[0];
z q[5];
x q[2];
cu3(5.103877,1.6421162,1.2645371) q[1],q[6];
cswap q[4],q[12],q[5];
h q[3];
swap q[10],q[7];
swap q[0],q[11];
cy q[9],q[8];
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
measure q[10] -> c[10];
measure q[11] -> c[11];
measure q[12] -> c[12];

OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg c[4];
ccx q[1],q[3],q[0];
s q[2];
z q[0];
ccx q[2],q[1],q[3];
swap q[2],q[0];
z q[1];
u1(0.74976788) q[3];
cu1(4.3796369) q[0],q[1];
z q[2];
t q[3];
ccx q[3],q[2],q[1];
sdg q[0];
rzz(4.6188275) q[2],q[3];
cu1(2.3149368) q[0],q[1];
ccx q[0],q[1],q[2];
tdg q[3];
cx q[3],q[1];
cu3(0.25281582,1.4023178,0.81106633) q[0],q[2];
ch q[3],q[1];
cy q[2],q[0];
h q[2];
swap q[3],q[0];
u2(4.6524681,6.1724961) q[1];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
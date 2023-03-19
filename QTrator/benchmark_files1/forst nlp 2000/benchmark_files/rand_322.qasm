OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg c[4];
h q[1];
ccx q[0],q[2],q[3];
cswap q[2],q[0],q[1];
rz(5.5809656) q[3];
cx q[2],q[0];
cy q[3],q[1];
ch q[3],q[1];
u2(3.8252967,2.1658653) q[2];
h q[0];
rzz(0.23589047) q[1],q[3];
cu3(6.0363115,5.9558793,0.70720092) q[0],q[2];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];

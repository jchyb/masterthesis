OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg c[3];
ry(3.3283103) q[1];
id q[0];
x q[2];
cswap q[2],q[1],q[0];
ccx q[2],q[0],q[1];
id q[2];
cu3(2.2885106,5.7425696,2.2859934) q[1],q[0];
ccx q[1],q[2],q[0];
cz q[0],q[1];
s q[2];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];

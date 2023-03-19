OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg c2[4];
 h q[3];
 cp(pi/2) q[3],q[2];
 cp(pi/4) q[3],q[1];
 cp(pi/8) q[3],q[0];
 h q[2];
 cp(pi/2) q[2],q[1];
 cp(pi/4) q[2],q[0];
 h q[1];
 cp(pi/2) q[1],q[0];
 h q[0];
 swap q[0],q[3];
 swap q[1],q[2];
 
barrier q[0],q[1],q[2],q[3];
measure q[0] -> c2[0];
measure q[1] -> c2[1];
measure q[2] -> c2[2];
measure q[3] -> c2[3];


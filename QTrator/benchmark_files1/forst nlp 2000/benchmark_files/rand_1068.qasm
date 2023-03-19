OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
creg c[1];
id q[0];
y q[0];
u3(2.0251073,1.3315682,4.0853109) q[0];
t q[0];
measure q[0] -> c[0];

OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
creg c[1];
s q[0];
sdg q[0];
s q[0];
u3(0.11335238,0.50840086,2.4613922) q[0];
x q[0];
ry(5.7664123) q[0];
x q[0];
tdg q[0];
u3(5.4441751,4.270749,2.0883669) q[0];
u3(0.66924956,0.85683993,1.0643555) q[0];
id q[0];
u3(5.6771766,0.17414108,1.335874) q[0];
ry(5.3451913) q[0];
y q[0];
measure q[0] -> c[0];

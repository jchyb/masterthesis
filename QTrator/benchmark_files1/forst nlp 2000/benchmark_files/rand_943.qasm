OPENQASM 2.0;
include "qelib1.inc";
qreg q[2];
creg c[2];
z q[0];
x q[1];
u3(5.494785,1.6986223,3.7547389) q[0];
u2(1.5588493,0.061979612) q[1];
rzz(2.8167865) q[0],q[1];
cu1(4.901679) q[1],q[0];
u1(5.3968286) q[1];
y q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];

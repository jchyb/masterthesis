OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
creg c[1];
ry(1.5202367) q[0];
t q[0];
id q[0];
s q[0];
rz(1.4790017) q[0];
u3(2.4856112,2.3167143,0.13221684) q[0];
rz(6.2483585) q[0];
t q[0];
measure q[0] -> c[0];
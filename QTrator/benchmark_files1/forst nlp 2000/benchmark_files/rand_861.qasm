OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg c[3];
cswap q[1],q[2],q[0];
cz q[1],q[2];
h q[0];
u3(4.4707768,2.3790434,0.91341037) q[2];
s q[0];
z q[1];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];

OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
creg c[7];
u1(5.0261989) q[2];
ch q[4],q[5];
h q[1];
u3(5.1834785,0.66725098,5.4057236) q[0];
t q[3];
z q[6];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
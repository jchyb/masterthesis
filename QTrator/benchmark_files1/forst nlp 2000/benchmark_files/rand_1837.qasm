OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
creg c[7];
cu1(4.4293874) q[4],q[2];
rzz(5.2394633) q[6],q[1];
u2(5.0100169,2.728399) q[5];
cu1(0.81451827) q[0],q[3];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];

OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
creg c[1];
u2(0.62665515,2.8561674) q[0];
rx(0.20371251) q[0];
measure q[0] -> c[0];

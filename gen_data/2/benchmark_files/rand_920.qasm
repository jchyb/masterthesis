OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cz q[9],q[7];
rzz(3.9978978) q[1],q[4];
cswap q[0],q[5],q[6];
ch q[8],q[2];
y q[3];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];
measure q[8] -> c[8];
measure q[9] -> c[9];

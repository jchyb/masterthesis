OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
tdg q[8];
cswap q[3],q[5],q[2];
cswap q[7],q[9],q[1];
h q[0];
u1(0.61630226) q[6];
rx(2.944344) q[4];
crz(2.430373) q[1],q[6];
cswap q[0],q[2],q[3];
ccx q[4],q[7],q[8];
tdg q[5];
tdg q[9];
cu3(2.3048336,4.5749389,2.039805) q[2],q[8];
cswap q[7],q[3],q[6];
cswap q[5],q[9],q[4];
rx(3.1305679) q[0];
z q[1];
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
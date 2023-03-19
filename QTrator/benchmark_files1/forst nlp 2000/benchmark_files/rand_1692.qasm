OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg c[3];
crz(1.3278411) q[0],q[1];
h q[2];
rx(0.23237247) q[0];
crz(0.88376828) q[1],q[2];
ccx q[2],q[1],q[0];
id q[2];
cz q[0],q[1];
ccx q[1],q[2],q[0];
cswap q[0],q[1],q[2];
cswap q[2],q[0],q[1];
rzz(1.918924) q[0],q[2];
t q[1];
y q[0];
h q[2];
z q[1];
crz(4.676857) q[1],q[0];
tdg q[2];
ccx q[0],q[1],q[2];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];

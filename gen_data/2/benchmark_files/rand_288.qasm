OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
sdg q[9];
tdg q[5];
t q[1];
cu1(1.7032443) q[6],q[0];
y q[7];
crz(2.3454169) q[2],q[3];
swap q[4],q[8];
cswap q[1],q[3],q[0];
ccx q[2],q[6],q[5];
x q[4];
cu1(5.0765029) q[8],q[9];
rx(3.9193939) q[7];
ccx q[8],q[0],q[9];
u1(4.5084634) q[3];
cswap q[2],q[5],q[4];
cy q[7],q[6];
id q[1];
cx q[6],q[8];
cu1(0.1767545) q[3],q[2];
cswap q[9],q[4],q[1];
cswap q[7],q[5],q[0];
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
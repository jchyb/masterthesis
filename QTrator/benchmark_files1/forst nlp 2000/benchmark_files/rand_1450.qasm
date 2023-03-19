OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[5];
cswap q[2],q[3],q[4];
h q[1];
y q[0];
rx(2.3886927) q[3];
crz(5.3704359) q[2],q[4];
tdg q[0];
tdg q[1];
ry(2.3597689) q[0];
ch q[3],q[4];
x q[2];
s q[1];
id q[0];
ry(2.6111553) q[4];
cswap q[3],q[1],q[2];
cu1(3.4891765) q[2],q[0];
ry(4.4078581) q[1];
cu1(3.4145118) q[4],q[3];
ccx q[1],q[3],q[4];
x q[0];
s q[2];
ch q[2],q[4];
ccx q[1],q[3],q[0];
rx(3.8430608) q[0];
ccx q[4],q[1],q[3];
u3(3.6424839,2.1403243,4.1136602) q[2];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];

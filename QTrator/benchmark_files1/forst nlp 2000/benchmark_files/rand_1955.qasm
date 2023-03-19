OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg c[3];
rx(4.900316) q[1];
s q[0];
rz(5.8628196) q[2];
ch q[2],q[0];
u1(1.7703079) q[1];
cswap q[2],q[1],q[0];
cswap q[1],q[2],q[0];
swap q[2],q[0];
z q[1];
cx q[2],q[1];
id q[0];
u3(3.8429646,5.1542189,4.8843787) q[1];
ry(2.0390565) q[0];
rx(5.929635) q[2];
sdg q[0];
h q[2];
h q[1];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
creg c[6];
s q[1];
x q[5];
cswap q[0],q[2],q[4];
id q[3];
cu3(1.4613734,2.1889715,2.626288) q[3],q[4];
t q[0];
swap q[2],q[1];
u3(2.3635698,3.3732448,4.3580647) q[5];
sdg q[4];
cswap q[1],q[3],q[5];
cu1(1.2132436) q[2],q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
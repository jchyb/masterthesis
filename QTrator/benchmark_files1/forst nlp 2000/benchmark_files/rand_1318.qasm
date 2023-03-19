OPENQASM 2.0;
include "qelib1.inc";
qreg q[3];
creg c[3];
ch q[0],q[2];
s q[1];
cu3(5.0671591,4.2739323,3.4750641) q[1],q[0];
ry(1.4814957) q[2];
cswap q[0],q[2],q[1];
swap q[0],q[1];
x q[2];
u2(4.6908575,0.16585201) q[1];
cx q[2],q[0];
sdg q[0];
sdg q[2];
t q[1];
ccx q[0],q[2],q[1];
cx q[1],q[0];
z q[2];
sdg q[2];
ry(3.9526179) q[0];
sdg q[1];
ccx q[1],q[2],q[0];
ccx q[1],q[0],q[2];
sdg q[0];
swap q[2],q[1];
s q[0];
cu1(0.86606545) q[1],q[2];
rzz(5.2022136) q[1],q[2];
z q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];

OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
creg c[6];
ccx q[4],q[5],q[3];
cswap q[2],q[0],q[1];
z q[1];
cz q[4],q[5];
y q[2];
u1(4.9539451) q[0];
u1(4.0761619) q[3];
cswap q[1],q[3],q[2];
ccx q[0],q[4],q[5];
cx q[1],q[4];
cswap q[3],q[5],q[0];
h q[2];
ccx q[4],q[5],q[1];
x q[3];
x q[0];
u2(3.055501,1.7042665) q[2];
cswap q[2],q[5],q[4];
u1(4.6355485) q[1];
cx q[0],q[3];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
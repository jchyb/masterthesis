OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cy q[9],q[7];
ccx q[6],q[2],q[4];
ccx q[0],q[5],q[3];
cz q[1],q[8];
cy q[7],q[9];
rx(0.97868323) q[4];
ccx q[5],q[1],q[0];
y q[3];
u3(6.0377895,4.4847947,4.0336655) q[6];
u1(5.9821122) q[2];
h q[8];
y q[0];
cu3(4.8255268,2.4830987,1.8887217) q[7],q[5];
ccx q[1],q[6],q[4];
u3(0.2517145,4.1857244,4.391065) q[3];
swap q[9],q[2];
u1(0.38123103) q[8];
ccx q[7],q[3],q[8];
crz(0.75294521) q[0],q[4];
rx(2.5146797) q[6];
cswap q[5],q[2],q[1];
u1(1.7422766) q[9];
cswap q[1],q[0],q[4];
ccx q[9],q[5],q[6];
cswap q[7],q[3],q[2];
tdg q[8];
u1(4.8827009) q[3];
cy q[1],q[8];
rz(5.3605699) q[6];
u3(4.5777065,3.731789,5.7318401) q[0];
cu1(0.40146357) q[7],q[2];
cswap q[4],q[5],q[9];
rx(3.6949324) q[1];
cu3(0.014723768,5.565135,4.2609737) q[8],q[4];
u1(3.5168287) q[7];
cy q[9],q[5];
swap q[2],q[3];
z q[0];
t q[6];
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
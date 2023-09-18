OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ch q[3],q[4];
ccx q[1],q[8],q[0];
swap q[7],q[5];
cu1(6.2089913) q[2],q[9];
z q[6];
cx q[7],q[0];
rz(5.3601725) q[3];
cy q[1],q[4];
cu3(2.169558,6.2198891,1.3147692) q[9],q[8];
cswap q[5],q[2],q[6];
ccx q[7],q[4],q[8];
ccx q[1],q[5],q[6];
cy q[2],q[9];
u2(2.8198009,4.6318713) q[3];
y q[0];
cswap q[4],q[7],q[3];
ccx q[9],q[2],q[5];
rzz(1.6565242) q[6],q[1];
u3(3.4433175,6.2334601,5.8536098) q[0];
sdg q[8];
swap q[8],q[3];
t q[1];
cu1(5.8114216) q[7],q[9];
ch q[5],q[4];
s q[2];
id q[6];
z q[0];
ccx q[7],q[2],q[8];
cswap q[9],q[6],q[3];
cswap q[5],q[0],q[4];
ry(3.217769) q[1];
s q[2];
cswap q[5],q[8],q[0];
ccx q[1],q[9],q[6];
h q[4];
cy q[3],q[7];
ccx q[5],q[6],q[2];
ccx q[4],q[7],q[9];
u1(2.070328) q[0];
cu1(5.2355759) q[8],q[1];
x q[3];
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
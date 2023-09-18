OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
crz(3.5674065) q[1],q[2];
u3(1.0721083,0.84837485,1.0369588) q[8];
cswap q[4],q[9],q[5];
ccx q[0],q[6],q[7];
s q[3];
x q[9];
cu1(1.8599616) q[3],q[7];
crz(0.052144053) q[2],q[1];
cswap q[6],q[0],q[5];
u2(5.3307062,6.123291) q[8];
u1(2.0542458) q[4];
cy q[4],q[1];
swap q[0],q[6];
ccx q[9],q[7],q[3];
rzz(4.2550436) q[5],q[8];
z q[2];
swap q[2],q[9];
crz(1.4130005) q[1],q[8];
ch q[4],q[6];
ccx q[5],q[7],q[0];
x q[3];
ccx q[9],q[4],q[6];
ccx q[1],q[5],q[7];
x q[0];
cu3(4.2584465,5.6965484,2.3195398) q[3],q[8];
sdg q[2];
u2(1.3636058,2.8603659) q[4];
cswap q[2],q[3],q[1];
cz q[6],q[5];
cswap q[9],q[0],q[8];
u1(4.5811752) q[7];
cswap q[3],q[6],q[1];
u3(2.4621447,4.5592911,3.8482969) q[7];
cx q[9],q[4];
rzz(4.6203535) q[0],q[5];
crz(5.0147446) q[8],q[2];
rz(4.9805977) q[7];
ccx q[2],q[1],q[9];
cx q[3],q[0];
ccx q[6],q[8],q[5];
t q[4];
cswap q[1],q[8],q[5];
s q[3];
u2(5.0541075,6.2306533) q[2];
cu3(0.084479521,4.8320344,1.906912) q[7],q[9];
cy q[0],q[6];
tdg q[4];
ccx q[9],q[4],q[3];
t q[1];
swap q[6],q[7];
ccx q[2],q[5],q[8];
t q[0];
cy q[2],q[9];
rx(5.6017425) q[7];
cswap q[8],q[5],q[3];
cz q[4],q[6];
ry(6.217635) q[0];
z q[1];
cswap q[4],q[1],q[8];
swap q[9],q[6];
t q[2];
cx q[0],q[3];
cx q[7],q[5];
cswap q[0],q[8],q[5];
u2(2.2755338,3.6292958) q[7];
rzz(0.28858783) q[4],q[2];
ccx q[6],q[3],q[9];
x q[1];
cy q[6],q[8];
cswap q[4],q[9],q[1];
tdg q[7];
y q[2];
swap q[3],q[5];
t q[0];
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
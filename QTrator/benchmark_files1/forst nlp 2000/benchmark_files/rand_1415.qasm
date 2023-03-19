OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[5];
ccx q[3],q[2],q[0];
x q[4];
h q[1];
ccx q[4],q[2],q[0];
rz(2.9011893) q[1];
u1(2.5321052) q[3];
h q[0];
u1(4.146508) q[2];
t q[4];
u2(4.7834548,6.0324836) q[3];
h q[1];
ch q[0],q[3];
rz(1.5364054) q[1];
t q[2];
y q[4];
ccx q[0],q[3],q[4];
swap q[1],q[2];
cswap q[4],q[2],q[0];
rx(4.1772445) q[1];
u3(6.1478278,5.5447171,5.4200697) q[3];
u2(4.4851739,4.064488) q[3];
u1(3.2423515) q[1];
cswap q[0],q[2],q[4];
crz(1.8694302) q[2],q[4];
ccx q[3],q[0],q[1];
cswap q[2],q[0],q[3];
cu3(3.8426959,1.2390935,1.4166397) q[1],q[4];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];

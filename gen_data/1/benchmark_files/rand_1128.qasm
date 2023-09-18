OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[1],q[4],q[3];
cu3(0.44661558,0.031815807,5.6143933) q[8],q[0];
cu1(6.0199932) q[5],q[7];
ry(3.0306446) q[9];
rz(1.9020603) q[2];
u1(2.7233409) q[6];
cu3(4.4721756,1.910717,6.0451153) q[3],q[5];
s q[4];
u3(2.1913578,4.8720928,4.6421853) q[9];
cswap q[8],q[0],q[2];
cswap q[1],q[7],q[6];
sdg q[2];
id q[8];
u1(3.1969118) q[7];
cswap q[1],q[0],q[9];
ccx q[3],q[4],q[6];
u2(4.0725379,4.9128052) q[5];
t q[0];
ccx q[6],q[1],q[3];
crz(2.279515) q[9],q[4];
cz q[7],q[5];
cy q[2],q[8];
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
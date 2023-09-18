OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
id q[9];
id q[0];
swap q[5],q[4];
tdg q[1];
t q[7];
cz q[6],q[2];
h q[8];
u3(4.931234,1.8788196,2.0764113) q[3];
ch q[7],q[9];
ry(5.5484812) q[8];
ccx q[1],q[5],q[3];
cswap q[6],q[4],q[0];
u2(2.588624,0.20854964) q[2];
cu1(0.49988875) q[7],q[0];
h q[8];
rzz(0.9597708) q[3],q[4];
ccx q[5],q[9],q[6];
y q[2];
u1(5.0109866) q[1];
cswap q[1],q[7],q[2];
u1(5.4157869) q[8];
rzz(5.862699) q[6],q[4];
cz q[0],q[5];
tdg q[3];
h q[9];
sdg q[4];
ccx q[5],q[8],q[9];
tdg q[2];
s q[6];
u2(3.6193888,2.6455648) q[0];
cswap q[1],q[7],q[3];
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
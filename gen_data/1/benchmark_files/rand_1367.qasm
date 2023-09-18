OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[6],q[3],q[5];
cswap q[7],q[4],q[0];
u1(3.0246831) q[2];
tdg q[8];
u1(1.0693546) q[9];
h q[1];
ch q[7],q[3];
cu3(2.2924187,3.6682973,2.733787) q[8],q[5];
cswap q[1],q[4],q[2];
cy q[6],q[9];
tdg q[0];
swap q[1],q[6];
ccx q[4],q[0],q[3];
cu1(3.6878132) q[8],q[7];
rx(1.8500862) q[5];
rzz(4.501901) q[2],q[9];
cy q[7],q[9];
id q[0];
crz(1.2913957) q[1],q[8];
u2(5.5941959,2.1418334) q[2];
cswap q[6],q[3],q[4];
h q[5];
cz q[2],q[3];
cswap q[5],q[6],q[0];
ccx q[9],q[1],q[7];
t q[8];
y q[4];
ry(4.2130491) q[3];
y q[9];
rz(4.1656028) q[0];
h q[6];
cu3(6.2207912,2.2508246,2.7606951) q[8],q[4];
swap q[5],q[1];
s q[2];
tdg q[7];
rz(4.9521949) q[9];
x q[5];
u3(1.959868,1.3698593,0.54928601) q[8];
rx(1.7409065) q[4];
ccx q[7],q[6],q[2];
ccx q[1],q[3],q[0];
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
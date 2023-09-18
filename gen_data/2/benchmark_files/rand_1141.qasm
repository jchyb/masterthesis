OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
crz(1.4218471) q[3],q[2];
cswap q[7],q[8],q[4];
h q[9];
cy q[6],q[5];
cu1(4.9116993) q[0],q[1];
cswap q[1],q[7],q[0];
ch q[8],q[2];
h q[6];
ch q[4],q[3];
cx q[5],q[9];
ccx q[9],q[6],q[2];
ccx q[5],q[0],q[3];
ch q[4],q[8];
tdg q[1];
s q[7];
t q[2];
ry(2.5685518) q[5];
cx q[3],q[1];
u1(2.4613116) q[0];
cswap q[7],q[9],q[8];
t q[4];
x q[6];
crz(1.1996504) q[8],q[5];
ccx q[0],q[1],q[9];
u2(6.1637583,6.2516034) q[2];
cu3(4.0721628,3.6163157,2.5390589) q[6],q[7];
cy q[3],q[4];
rx(0.90711829) q[2];
ccx q[7],q[5],q[8];
ch q[6],q[4];
ccx q[0],q[3],q[9];
s q[1];
rz(2.0428315) q[5];
swap q[9],q[3];
t q[7];
cswap q[1],q[6],q[0];
rz(4.9338499) q[2];
ch q[8],q[4];
ccx q[5],q[2],q[9];
id q[0];
ccx q[7],q[3],q[1];
u3(0.92916548,4.790015,5.6509896) q[8];
crz(1.4295058) q[4],q[6];
cu1(2.7058148) q[5],q[8];
rx(4.3920673) q[7];
t q[3];
u1(2.0808336) q[0];
s q[1];
ch q[2],q[6];
cu1(0.11579472) q[4],q[9];
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
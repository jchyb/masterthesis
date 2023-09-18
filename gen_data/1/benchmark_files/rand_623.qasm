OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rzz(4.4094717) q[5],q[6];
swap q[8],q[1];
t q[2];
cswap q[4],q[0],q[9];
crz(4.7946364) q[3],q[7];
t q[6];
cswap q[4],q[2],q[1];
cswap q[3],q[0],q[5];
cy q[8],q[9];
s q[7];
id q[3];
u3(3.7532421,4.5892046,4.4190001) q[2];
t q[4];
h q[8];
z q[9];
ccx q[7],q[5],q[6];
x q[0];
u1(5.5141156) q[1];
cy q[9],q[5];
sdg q[3];
ccx q[2],q[1],q[4];
cx q[8],q[0];
z q[6];
ry(5.9390305) q[7];
tdg q[6];
s q[7];
ccx q[1],q[3],q[9];
rx(1.2394971) q[8];
s q[4];
cswap q[2],q[5],q[0];
y q[6];
cx q[5],q[3];
u1(0.058121379) q[9];
swap q[7],q[2];
cswap q[1],q[4],q[0];
u2(2.9955332,4.6014951) q[8];
ccx q[9],q[0],q[1];
cy q[4],q[6];
id q[7];
z q[2];
cx q[5],q[3];
u1(5.2150846) q[8];
crz(6.2459086) q[5],q[4];
cswap q[7],q[6],q[8];
ch q[0],q[3];
ch q[1],q[2];
ry(6.0942443) q[9];
t q[6];
h q[2];
cx q[5],q[3];
ccx q[9],q[4],q[7];
u1(3.4766513) q[8];
u1(5.8604703) q[1];
u3(1.4509489,1.9642121,1.428021) q[0];
cu3(0.99755091,6.1770416,5.8982972) q[4],q[5];
cu3(1.3933991,4.2116387,3.8161294) q[1],q[9];
ccx q[6],q[8],q[3];
x q[7];
ry(4.5922789) q[0];
tdg q[2];
cu1(0.4012939) q[0],q[4];
ry(4.8781994) q[1];
x q[2];
crz(2.280465) q[6],q[7];
cu3(0.44854329,3.8953112,2.6348461) q[5],q[9];
z q[3];
rx(2.9491945) q[8];
ccx q[6],q[3],q[7];
cu1(3.0768001) q[4],q[2];
ccx q[8],q[9],q[1];
tdg q[5];
ry(3.3530212) q[0];
ccx q[2],q[0],q[6];
ch q[1],q[7];
x q[4];
ccx q[3],q[5],q[9];
tdg q[8];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cu3(2.7748499,5.3234358,5.345746) q[8],q[7];
rzz(2.9483921) q[9],q[5];
sdg q[3];
ccx q[1],q[2],q[6];
y q[0];
sdg q[4];
rz(3.9819054) q[5];
u2(3.7248787,3.8626163) q[2];
rzz(3.1611584) q[3],q[8];
cu1(0.045280456) q[4],q[6];
cu1(3.310549) q[1],q[9];
sdg q[7];
y q[0];
ccx q[0],q[9],q[1];
ch q[7],q[8];
cswap q[3],q[2],q[4];
cx q[6],q[5];
cz q[0],q[3];
ch q[6],q[2];
t q[1];
x q[8];
cy q[9],q[4];
tdg q[5];
rz(3.4919279) q[7];
cswap q[7],q[5],q[2];
cx q[4],q[0];
cswap q[3],q[9],q[1];
crz(2.9507295) q[8],q[6];
ccx q[3],q[1],q[5];
swap q[6],q[7];
sdg q[4];
crz(4.9958421) q[8],q[2];
rx(5.5556051) q[9];
x q[0];
rx(4.1417199) q[1];
cswap q[0],q[4],q[3];
crz(3.9313919) q[7],q[5];
rz(5.0212296) q[2];
crz(3.6032006) q[8],q[9];
u3(0.87080803,6.246917,6.2483128) q[6];
u2(4.9390549,4.0243433) q[3];
ccx q[1],q[9],q[5];
cx q[6],q[8];
cswap q[4],q[7],q[2];
sdg q[0];
cswap q[5],q[4],q[1];
cu3(0.19816312,1.5850416,4.1638306) q[3],q[6];
u1(0.77197265) q[8];
cy q[0],q[2];
u2(0.59094108,5.4208877) q[9];
h q[7];
ccx q[6],q[7],q[3];
cy q[0],q[5];
cswap q[2],q[1],q[8];
cu1(5.9313198) q[4],q[9];
u2(1.4857147,6.0045328) q[8];
ccx q[1],q[2],q[9];
cswap q[4],q[0],q[6];
cswap q[5],q[7],q[3];
ccx q[3],q[8],q[1];
ccx q[9],q[2],q[0];
ch q[4],q[5];
rx(3.9893584) q[6];
s q[7];
t q[3];
cu1(1.5324248) q[2],q[6];
cu3(0.33942056,1.7372194,4.0860575) q[5],q[8];
ccx q[4],q[1],q[0];
cy q[7],q[9];
cy q[0],q[8];
cu3(1.8955976,1.7254993,4.9215555) q[6],q[9];
cu1(5.313498) q[2],q[3];
y q[1];
cswap q[5],q[7],q[4];
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
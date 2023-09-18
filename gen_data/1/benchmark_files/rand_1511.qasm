OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[8],q[4],q[2];
rx(0.81516319) q[0];
cx q[5],q[6];
cswap q[9],q[7],q[3];
sdg q[1];
ccx q[1],q[9],q[7];
s q[5];
ch q[8],q[0];
swap q[4],q[3];
id q[2];
tdg q[6];
swap q[3],q[5];
ccx q[9],q[7],q[6];
cx q[4],q[8];
x q[1];
s q[0];
tdg q[2];
cu3(1.8135161,3.0502963,4.8036514) q[1],q[3];
cswap q[9],q[6],q[0];
ccx q[4],q[7],q[2];
swap q[8],q[5];
cswap q[3],q[8],q[7];
s q[5];
t q[6];
cswap q[9],q[1],q[0];
y q[4];
u2(0.96045117,4.9676197) q[2];
rx(4.0279794) q[5];
cy q[9],q[8];
z q[7];
cx q[6],q[0];
ch q[3],q[2];
u3(5.4135181,5.9622698,3.6246384) q[1];
s q[4];
u1(3.2341666) q[1];
cu1(0.95456432) q[0],q[4];
rzz(1.0868343) q[2],q[9];
tdg q[5];
cswap q[7],q[8],q[6];
sdg q[3];
id q[1];
cswap q[3],q[2],q[6];
cu1(3.5054286) q[7],q[0];
crz(2.8948867) q[8],q[9];
t q[5];
s q[4];
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
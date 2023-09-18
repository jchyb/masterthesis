OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[2],q[0],q[6];
tdg q[3];
cswap q[1],q[4],q[7];
ccx q[9],q[5],q[8];
x q[1];
cswap q[9],q[3],q[5];
ccx q[8],q[4],q[0];
cswap q[6],q[7],q[2];
swap q[9],q[4];
u3(5.7745488,3.8822239,6.0603553) q[8];
cswap q[5],q[6],q[7];
swap q[3],q[2];
u3(0.58717724,5.0520624,5.3949875) q[0];
rx(5.7428174) q[1];
cu3(2.157102,0.16864216,0.20065102) q[8],q[5];
s q[3];
ccx q[7],q[4],q[1];
ccx q[9],q[6],q[2];
u3(3.9542252,0.80996061,0.68809068) q[0];
crz(0.76298054) q[7],q[0];
cu3(3.5058397,3.0043973,1.0354793) q[9],q[5];
ch q[4],q[2];
h q[8];
id q[3];
cx q[1],q[6];
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
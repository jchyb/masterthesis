OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
swap q[1],q[0];
cswap q[5],q[8],q[7];
id q[3];
ccx q[4],q[6],q[9];
s q[2];
cswap q[4],q[9],q[7];
cu3(4.5363405,4.4148755,5.2278124) q[6],q[3];
ccx q[0],q[2],q[5];
u1(3.7374883) q[8];
y q[1];
cswap q[8],q[5],q[3];
cswap q[1],q[7],q[2];
tdg q[9];
u1(2.7866007) q[4];
h q[6];
u2(4.0762035,3.9233776) q[0];
crz(6.1766385) q[2],q[1];
rx(0.87623596) q[8];
ccx q[7],q[5],q[4];
cswap q[6],q[9],q[0];
u2(0.41543121,4.5844135) q[3];
cy q[0],q[8];
cswap q[2],q[5],q[7];
rz(1.2409164) q[6];
ch q[3],q[4];
cx q[1],q[9];
cx q[6],q[7];
ccx q[0],q[1],q[2];
s q[4];
ccx q[5],q[9],q[8];
y q[3];
tdg q[0];
cswap q[5],q[4],q[7];
u1(4.2316331) q[8];
cswap q[1],q[6],q[3];
cu3(5.926672,0.36507647,1.6718628) q[2],q[9];
cu3(4.6316959,3.9246461,0.0042625666) q[5],q[3];
ccx q[4],q[7],q[1];
cx q[6],q[0];
cswap q[9],q[8],q[2];
ch q[8],q[7];
ccx q[4],q[2],q[5];
swap q[0],q[3];
cswap q[1],q[9],q[6];
ch q[8],q[6];
sdg q[4];
ry(4.4171438) q[3];
ccx q[9],q[2],q[5];
cswap q[1],q[0],q[7];
ccx q[5],q[0],q[4];
cx q[3],q[1];
u1(0.026992646) q[7];
crz(1.5123002) q[2],q[8];
rzz(2.8525161) q[9],q[6];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[7],q[4],q[6];
cz q[5],q[3];
crz(1.1312973) q[8],q[1];
ccx q[0],q[9],q[2];
rzz(5.8712855) q[4],q[2];
cswap q[7],q[5],q[8];
cz q[3],q[6];
cz q[0],q[1];
rx(3.0855584) q[9];
cx q[1],q[2];
crz(2.2136074) q[0],q[4];
cy q[6],q[8];
cswap q[7],q[3],q[5];
h q[9];
tdg q[4];
cy q[7],q[9];
cswap q[5],q[2],q[3];
ch q[1],q[6];
crz(4.9769456) q[0],q[8];
ccx q[1],q[6],q[5];
rzz(1.8438298) q[4],q[2];
cswap q[7],q[3],q[0];
tdg q[8];
u2(4.7626054,0.61870037) q[9];
u3(3.7177966,0.47305228,4.6447902) q[4];
cu1(0.82115445) q[5],q[2];
cu1(3.2667076) q[3],q[1];
h q[7];
ccx q[8],q[6],q[9];
sdg q[0];
swap q[9],q[0];
x q[1];
ccx q[5],q[6],q[2];
tdg q[3];
cswap q[7],q[4],q[8];
rx(0.48741907) q[6];
rz(4.2782055) q[8];
cx q[5],q[0];
ccx q[7],q[2],q[4];
cy q[3],q[9];
s q[1];
crz(2.3046445) q[9],q[5];
cswap q[4],q[0],q[1];
ccx q[3],q[7],q[8];
crz(3.4343442) q[2],q[6];
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
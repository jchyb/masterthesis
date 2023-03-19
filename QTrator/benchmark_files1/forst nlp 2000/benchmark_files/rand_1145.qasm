OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cz q[7],q[4];
ccx q[5],q[0],q[9];
rz(2.1250809) q[3];
x q[8];
ch q[6],q[2];
h q[1];
cy q[3],q[7];
cswap q[5],q[1],q[2];
cx q[6],q[4];
cswap q[8],q[0],q[9];
cu1(3.7822976) q[2],q[8];
rx(1.2211661) q[9];
rzz(5.3055923) q[5],q[3];
cswap q[7],q[0],q[4];
sdg q[6];
ry(2.9153521) q[1];
ry(5.3851807) q[9];
cswap q[6],q[7],q[2];
crz(2.0815998) q[1],q[0];
cy q[3],q[8];
h q[4];
z q[5];
ccx q[6],q[8],q[9];
cswap q[5],q[1],q[3];
s q[7];
rx(5.5298607) q[2];
u2(2.2261121,5.0840545) q[0];
rz(2.7630298) q[4];
swap q[3],q[6];
z q[0];
ch q[4],q[1];
cu3(4.2714635,0.48614397,4.9092222) q[8],q[9];
ccx q[2],q[7],q[5];
cy q[1],q[5];
ccx q[8],q[2],q[6];
rz(3.1968636) q[9];
cswap q[4],q[0],q[7];
z q[3];
s q[7];
cswap q[2],q[9],q[4];
ccx q[5],q[3],q[6];
cswap q[1],q[8],q[0];
cswap q[3],q[6],q[8];
swap q[9],q[5];
ccx q[7],q[2],q[1];
cy q[0],q[4];
cswap q[1],q[8],q[7];
cswap q[5],q[2],q[4];
cswap q[3],q[0],q[9];
tdg q[6];
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

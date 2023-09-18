OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[1],q[8],q[6];
ccx q[4],q[5],q[7];
ccx q[2],q[3],q[0];
tdg q[9];
cu1(2.6582141) q[6],q[1];
z q[9];
y q[3];
rz(3.0593901) q[0];
ch q[5],q[4];
s q[8];
cx q[7],q[2];
rzz(4.8256366) q[8],q[2];
ccx q[1],q[3],q[5];
cz q[0],q[9];
rzz(2.754232) q[6],q[7];
s q[4];
rzz(2.5622719) q[2],q[8];
ch q[7],q[9];
z q[1];
cswap q[4],q[5],q[0];
u2(5.1984397,2.8959822) q[6];
tdg q[3];
swap q[8],q[6];
ccx q[0],q[2],q[7];
s q[5];
cu3(5.4008265,2.8959109,2.6665111) q[1],q[9];
ch q[3],q[4];
rz(2.8602992) q[1];
cswap q[9],q[2],q[3];
cswap q[8],q[7],q[4];
cswap q[0],q[5],q[6];
ccx q[6],q[0],q[3];
cswap q[1],q[7],q[9];
swap q[2],q[5];
z q[4];
y q[8];
rzz(4.2470125) q[0],q[1];
cy q[3],q[4];
ccx q[5],q[7],q[9];
ccx q[6],q[2],q[8];
ccx q[3],q[1],q[6];
ccx q[0],q[9],q[2];
ccx q[8],q[4],q[5];
u1(6.1856784) q[7];
swap q[0],q[1];
cswap q[8],q[4],q[2];
cswap q[3],q[9],q[6];
h q[5];
sdg q[7];
z q[1];
rx(3.3296678) q[2];
id q[8];
cswap q[5],q[0],q[6];
cswap q[4],q[9],q[7];
rx(1.0779375) q[3];
ccx q[1],q[6],q[5];
cswap q[0],q[2],q[4];
u1(5.493631) q[8];
ccx q[9],q[3],q[7];
crz(4.3773679) q[2],q[0];
cswap q[3],q[7],q[8];
cu3(2.247377,5.779841,4.6668868) q[4],q[1];
z q[9];
crz(0.3978168) q[6],q[5];
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
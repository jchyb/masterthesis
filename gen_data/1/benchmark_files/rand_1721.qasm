OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
t q[0];
cu1(4.1587903) q[1],q[9];
sdg q[5];
cswap q[2],q[8],q[3];
cu3(2.0710294,3.1418738,3.0509807) q[4],q[7];
rz(4.8847357) q[6];
cswap q[3],q[7],q[9];
ccx q[4],q[1],q[2];
ccx q[0],q[5],q[8];
ry(4.3777852) q[6];
ccx q[4],q[5],q[0];
z q[9];
h q[3];
rx(1.410068) q[6];
u2(2.9459444,2.3168491) q[8];
rzz(1.108689) q[1],q[7];
rx(2.0424369) q[2];
id q[9];
h q[3];
cu3(5.2044914,0.095481441,4.7953962) q[1],q[8];
cz q[6],q[7];
cx q[2],q[5];
swap q[0],q[4];
cu1(3.2212262) q[9],q[1];
h q[3];
cswap q[5],q[7],q[6];
cswap q[0],q[4],q[2];
x q[8];
cswap q[8],q[2],q[4];
cx q[3],q[6];
cswap q[7],q[9],q[5];
tdg q[1];
s q[0];
rz(5.6600697) q[1];
tdg q[7];
cswap q[5],q[4],q[6];
ccx q[8],q[2],q[3];
rz(1.4937105) q[9];
rz(4.9227691) q[0];
sdg q[6];
swap q[0],q[1];
cswap q[4],q[8],q[9];
rx(0.80868883) q[5];
rx(4.2585369) q[2];
swap q[7],q[3];
cswap q[5],q[0],q[9];
ccx q[2],q[4],q[7];
x q[1];
ccx q[6],q[8],q[3];
sdg q[5];
s q[7];
ccx q[0],q[9],q[4];
z q[2];
cswap q[6],q[1],q[3];
z q[8];
ccx q[6],q[9],q[1];
u2(2.6296215,2.5137833) q[5];
rzz(2.2897095) q[2],q[8];
cu1(5.1867113) q[7],q[0];
u3(1.9782974,2.1330066,5.6924519) q[3];
x q[4];
rzz(1.5038549) q[1],q[2];
cz q[0],q[7];
cy q[5],q[8];
u1(5.7088703) q[6];
y q[4];
s q[3];
id q[9];
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
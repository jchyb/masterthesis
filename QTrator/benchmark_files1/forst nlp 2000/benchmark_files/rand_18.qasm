OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cx q[6],q[1];
rz(3.7027197) q[9];
cu3(1.1977526,2.177718,0.48086692) q[7],q[2];
u3(4.4314962,5.626212,5.7329195) q[8];
rx(5.7602604) q[5];
u3(3.8711777,0.60488415,5.8896697) q[3];
id q[4];
y q[0];
rzz(5.2836968) q[8],q[9];
x q[4];
rzz(1.5532198) q[0],q[5];
cy q[7],q[3];
sdg q[1];
y q[6];
tdg q[2];
cz q[0],q[6];
s q[7];
ccx q[3],q[9],q[4];
ry(0.89476095) q[5];
cy q[8],q[2];
s q[1];
h q[0];
tdg q[1];
cx q[4],q[8];
ccx q[3],q[7],q[5];
rzz(0.16959033) q[2],q[6];
rx(2.3067908) q[9];
id q[3];
swap q[5],q[7];
crz(0.66557384) q[9],q[2];
crz(1.9753249) q[1],q[4];
cswap q[8],q[0],q[6];
cz q[8],q[7];
ccx q[5],q[2],q[3];
cswap q[9],q[1],q[4];
cu1(1.3825635) q[0],q[6];
cy q[8],q[9];
cx q[5],q[2];
ch q[7],q[3];
cu3(3.8729176,3.5634134,0.24756812) q[4],q[0];
u3(2.5376789,0.6539195,1.1764197) q[6];
x q[1];
swap q[9],q[8];
cu3(5.3482175,5.5516439,0.23731388) q[2],q[5];
cswap q[1],q[6],q[3];
ccx q[7],q[0],q[4];
ch q[0],q[2];
crz(6.1979279) q[9],q[5];
y q[1];
ccx q[3],q[6],q[8];
swap q[7],q[4];
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
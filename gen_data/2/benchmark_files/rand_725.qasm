OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[6],q[0],q[1];
z q[5];
cu1(2.7221161) q[7],q[8];
cswap q[3],q[9],q[2];
y q[4];
z q[5];
cu3(5.3419544,5.108124,6.0318921) q[2],q[8];
rzz(5.107737) q[4],q[7];
z q[9];
rzz(4.8586782) q[6],q[0];
tdg q[1];
h q[3];
x q[3];
ccx q[0],q[5],q[2];
y q[6];
h q[8];
rzz(0.62635742) q[7],q[4];
ry(1.3718394) q[1];
x q[9];
cu3(3.376543,5.9416103,5.4781399) q[4],q[1];
h q[8];
rz(4.7336063) q[7];
y q[0];
ccx q[2],q[5],q[9];
x q[6];
u2(0.51011865,5.3686956) q[3];
u2(3.0488135,2.0028711) q[0];
ccx q[9],q[1],q[2];
rzz(5.4468681) q[5],q[3];
rx(0.38064274) q[7];
cy q[6],q[8];
z q[4];
ccx q[4],q[2],q[6];
ch q[0],q[3];
cu3(5.3675359,3.557103,1.823532) q[5],q[9];
x q[1];
u3(2.9489141,0.38628355,0.47939183) q[8];
z q[7];
cu3(4.7509611,4.9835123,0.27081103) q[4],q[8];
cswap q[1],q[5],q[6];
x q[7];
cx q[0],q[3];
rzz(0.98368342) q[9],q[2];
crz(1.079305) q[6],q[4];
ccx q[2],q[0],q[3];
cswap q[5],q[1],q[9];
rx(1.6975548) q[8];
t q[7];
rz(4.049156) q[3];
ccx q[0],q[4],q[1];
cu3(3.8253431,3.0747622,0.76666361) q[6],q[2];
cu1(3.386476) q[9],q[5];
cu3(2.7571017,1.6890185,0.04162873) q[7],q[8];
cx q[5],q[0];
cu1(5.2940842) q[7],q[1];
rx(1.6321568) q[2];
ccx q[6],q[8],q[3];
z q[9];
z q[4];
ccx q[8],q[4],q[5];
ccx q[9],q[3],q[0];
id q[7];
cswap q[2],q[1],q[6];
cy q[0],q[4];
cz q[8],q[6];
cu1(1.4903113) q[7],q[5];
cswap q[9],q[1],q[2];
y q[3];
cswap q[2],q[8],q[5];
cswap q[0],q[1],q[3];
tdg q[4];
cz q[7],q[6];
tdg q[9];
u3(4.9691619,4.2284661,0.30101629) q[5];
rx(3.2607961) q[9];
cswap q[4],q[7],q[1];
x q[6];
t q[0];
rzz(5.1935422) q[2],q[8];
x q[3];
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
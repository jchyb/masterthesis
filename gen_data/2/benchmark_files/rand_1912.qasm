OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[3],q[5],q[6];
cswap q[0],q[1],q[2];
sdg q[8];
cz q[9],q[7];
tdg q[4];
id q[3];
cswap q[9],q[7],q[8];
id q[5];
rzz(2.4007984) q[6],q[2];
y q[0];
tdg q[1];
y q[4];
cswap q[8],q[5],q[9];
ch q[0],q[2];
cswap q[6],q[1],q[3];
cu3(5.4514318,0.35459951,3.3554596) q[4],q[7];
cswap q[5],q[1],q[8];
z q[3];
cx q[0],q[4];
u3(1.1630481,4.9662776,6.1011819) q[9];
cu1(2.3813648) q[7],q[6];
tdg q[2];
ccx q[4],q[3],q[6];
cswap q[5],q[2],q[8];
x q[0];
cswap q[1],q[9],q[7];
rzz(2.6219707) q[9],q[2];
cy q[6],q[8];
crz(5.3759414) q[1],q[7];
tdg q[3];
crz(5.1832366) q[4],q[0];
id q[5];
ccx q[2],q[9],q[4];
u3(5.4309567,5.721437,6.0522009) q[5];
t q[8];
sdg q[7];
cu3(4.9733396,1.1940789,0.47493601) q[0],q[6];
crz(3.549251) q[3],q[1];
ccx q[8],q[5],q[6];
cswap q[9],q[2],q[3];
cswap q[7],q[0],q[4];
ry(1.7538843) q[1];
cswap q[8],q[3],q[5];
cswap q[7],q[2],q[6];
crz(3.675382) q[9],q[1];
cu1(5.8999811) q[0],q[4];
ccx q[8],q[1],q[3];
ccx q[6],q[7],q[0];
cswap q[4],q[9],q[2];
u3(0.9157985,3.2313615,0.2932776) q[5];
x q[8];
rx(4.5715331) q[9];
rx(1.6670978) q[7];
crz(3.0664183) q[4],q[2];
rzz(5.4424443) q[3],q[6];
ch q[0],q[5];
u3(1.3681103,2.5247721,4.0802716) q[1];
cswap q[0],q[5],q[4];
cy q[7],q[2];
cswap q[1],q[9],q[3];
t q[8];
sdg q[6];
tdg q[4];
t q[7];
rzz(1.2583621) q[0],q[8];
cswap q[9],q[3],q[2];
cy q[6],q[1];
h q[5];
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
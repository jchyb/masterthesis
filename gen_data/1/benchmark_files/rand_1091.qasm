OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ch q[6],q[5];
rz(5.9507873) q[2];
tdg q[9];
ccx q[0],q[7],q[8];
sdg q[1];
cz q[3],q[4];
cswap q[9],q[5],q[8];
ccx q[0],q[3],q[6];
cu1(3.5904089) q[4],q[1];
cu1(4.1687454) q[7],q[2];
cswap q[1],q[4],q[8];
swap q[7],q[0];
cu3(0.72511849,2.1430487,2.0443886) q[6],q[9];
t q[3];
swap q[2],q[5];
cswap q[2],q[4],q[6];
t q[7];
u2(1.2092823,2.70637) q[8];
u2(4.4977422,6.1673651) q[9];
cu3(4.1038499,1.6939345,4.2021373) q[5],q[1];
t q[0];
t q[3];
cu1(5.243366) q[8],q[3];
x q[2];
cx q[7],q[1];
cswap q[9],q[0],q[4];
u3(2.6733883,2.225918,0.22556282) q[6];
tdg q[5];
ccx q[9],q[4],q[2];
cswap q[7],q[3],q[5];
rzz(5.6285925) q[1],q[8];
id q[0];
tdg q[6];
ry(1.9678169) q[7];
cswap q[0],q[6],q[5];
cx q[2],q[8];
swap q[1],q[9];
ch q[3],q[4];
ccx q[4],q[9],q[6];
rx(3.1725507) q[8];
h q[1];
t q[0];
ccx q[3],q[2],q[7];
ry(1.0551553) q[5];
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
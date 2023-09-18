OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
z q[5];
ch q[2],q[4];
swap q[7],q[3];
cz q[9],q[8];
cswap q[1],q[6],q[0];
u2(1.2593547,0.59994521) q[5];
rzz(4.016546) q[9],q[3];
cswap q[6],q[2],q[8];
ccx q[4],q[7],q[1];
u1(1.0020575) q[0];
cswap q[7],q[6],q[2];
t q[8];
cswap q[1],q[9],q[4];
ccx q[3],q[0],q[5];
swap q[4],q[5];
ch q[9],q[0];
cswap q[2],q[1],q[8];
ccx q[6],q[3],q[7];
t q[4];
cswap q[7],q[3],q[5];
swap q[1],q[9];
cswap q[2],q[6],q[0];
u3(2.0413137,3.2159298,1.2904383) q[8];
rx(0.9375525) q[7];
rzz(4.9640967) q[8],q[0];
ccx q[2],q[3],q[6];
cy q[4],q[5];
rz(2.7665119) q[9];
ry(5.1918929) q[1];
cz q[2],q[7];
crz(4.0795809) q[3],q[5];
cx q[9],q[4];
ccx q[1],q[6],q[0];
t q[8];
cx q[3],q[8];
cswap q[0],q[9],q[4];
id q[6];
cz q[5],q[1];
cx q[7],q[2];
cswap q[2],q[8],q[9];
cswap q[3],q[1],q[4];
tdg q[0];
ccx q[7],q[5],q[6];
cswap q[3],q[8],q[2];
rx(4.1618729) q[0];
ccx q[1],q[6],q[4];
crz(6.1073831) q[9],q[7];
u1(1.712551) q[5];
x q[9];
cu1(4.9569619) q[7],q[8];
cswap q[0],q[5],q[2];
cswap q[1],q[6],q[3];
u3(4.7596631,2.9484176,1.9106224) q[4];
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
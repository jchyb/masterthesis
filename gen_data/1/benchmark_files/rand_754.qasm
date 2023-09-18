OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rzz(3.7213293) q[1],q[9];
cswap q[2],q[4],q[7];
u1(3.3197941) q[8];
t q[3];
h q[0];
z q[6];
rz(5.8384646) q[5];
ccx q[3],q[5],q[2];
rx(1.3988056) q[0];
s q[9];
cswap q[1],q[6],q[7];
tdg q[8];
ry(2.6848381) q[4];
ccx q[6],q[2],q[3];
cswap q[1],q[9],q[8];
ry(2.494757) q[5];
cswap q[4],q[0],q[7];
tdg q[2];
ccx q[6],q[5],q[0];
u1(6.1177469) q[4];
cx q[3],q[1];
ccx q[7],q[9],q[8];
ry(2.1473262) q[3];
ccx q[1],q[6],q[7];
x q[0];
ccx q[5],q[2],q[9];
u2(3.6120027,6.2752406) q[8];
s q[4];
ry(2.6762455) q[3];
ch q[1],q[6];
t q[2];
cswap q[4],q[7],q[8];
cswap q[9],q[5],q[0];
rzz(0.64168183) q[1],q[7];
swap q[2],q[6];
tdg q[5];
cswap q[9],q[8],q[3];
cu1(3.1970552) q[0],q[4];
t q[8];
s q[6];
ccx q[9],q[4],q[3];
ccx q[0],q[5],q[2];
cz q[7],q[1];
rx(5.4099062) q[1];
u3(1.509562,0.90684766,0.33571776) q[8];
x q[7];
ch q[0],q[5];
ccx q[2],q[4],q[6];
cu1(2.2792945) q[9],q[3];
crz(0.43604393) q[3],q[1];
cu1(2.3342118) q[6],q[0];
ry(5.265099) q[9];
crz(6.0149393) q[4],q[8];
cswap q[5],q[7],q[2];
ch q[0],q[2];
cz q[9],q[4];
cswap q[7],q[6],q[1];
ccx q[8],q[3],q[5];
rzz(3.1393471) q[7],q[9];
ccx q[5],q[3],q[6];
cu1(2.4131556) q[4],q[8];
cu3(4.2026639,1.2273088,1.7354638) q[2],q[0];
rz(3.0024325) q[1];
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
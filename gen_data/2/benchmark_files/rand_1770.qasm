OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[7],q[3],q[1];
u3(4.5284917,1.9608697,3.2756493) q[8];
cy q[6],q[9];
ccx q[4],q[5],q[0];
rz(1.1884697) q[2];
rx(4.9917909) q[4];
cz q[1],q[6];
rx(2.8287249) q[2];
cswap q[9],q[8],q[7];
rx(4.192099) q[5];
cx q[0],q[3];
cy q[9],q[3];
cu1(3.3965708) q[4],q[5];
rzz(5.5383797) q[0],q[7];
tdg q[1];
cu3(3.8661411,3.7762335,2.7430567) q[6],q[8];
z q[2];
cu3(3.0598302,4.3467191,0.12001788) q[9],q[1];
ccx q[0],q[5],q[7];
crz(5.8528604) q[3],q[4];
x q[8];
u1(1.6206941) q[6];
u2(0.18117073,5.1030074) q[2];
ccx q[9],q[7],q[6];
ccx q[0],q[2],q[3];
cswap q[8],q[1],q[4];
u3(5.2291055,4.6299599,4.2268482) q[5];
rz(1.5652856) q[4];
rz(3.7972073) q[5];
cy q[2],q[9];
rx(1.0058391) q[6];
ccx q[8],q[7],q[0];
y q[3];
rx(4.2073708) q[1];
cu1(2.8062952) q[1],q[2];
t q[9];
ccx q[8],q[5],q[4];
cswap q[6],q[7],q[0];
ry(1.9284725) q[3];
t q[6];
cswap q[9],q[8],q[3];
cu1(4.2318045) q[5],q[7];
tdg q[2];
ccx q[1],q[4],q[0];
h q[7];
rz(0.72379179) q[8];
u3(3.2786088,2.976706,0.64812501) q[3];
ry(3.6020308) q[9];
rzz(3.3058314) q[1],q[2];
cy q[6],q[4];
cu1(5.5324423) q[0],q[5];
cz q[0],q[5];
ccx q[9],q[1],q[7];
rzz(2.3058808) q[3],q[6];
cswap q[4],q[8],q[2];
crz(3.1118668) q[8],q[1];
ccx q[2],q[6],q[4];
t q[3];
t q[5];
cz q[7],q[0];
y q[9];
ccx q[1],q[5],q[6];
id q[0];
cswap q[9],q[2],q[8];
cx q[7],q[4];
id q[3];
t q[8];
rx(0.57352572) q[2];
cswap q[9],q[3],q[4];
u2(2.1112199,1.11927) q[6];
x q[5];
ccx q[7],q[1],q[0];
ch q[8],q[5];
id q[1];
ccx q[7],q[3],q[0];
cswap q[2],q[4],q[9];
id q[6];
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
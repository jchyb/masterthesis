OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
crz(1.1244739) q[2],q[4];
rzz(0.6704263) q[6],q[9];
h q[1];
ry(4.5017396) q[0];
swap q[3],q[5];
rx(2.9101823) q[7];
rx(4.0735728) q[8];
ccx q[6],q[5],q[2];
ry(0.18875548) q[9];
cy q[0],q[3];
ch q[7],q[8];
id q[1];
sdg q[4];
cswap q[0],q[5],q[8];
ch q[2],q[9];
z q[3];
cy q[6],q[7];
u1(0.52022809) q[1];
u2(1.6510298,5.0476695) q[4];
x q[2];
u2(6.0990036,2.9782215) q[6];
rzz(3.7408989) q[0],q[5];
cswap q[4],q[8],q[3];
ry(0.24216406) q[7];
swap q[9],q[1];
x q[7];
u1(2.379583) q[1];
h q[3];
sdg q[0];
ry(2.0161145) q[4];
u2(3.948511,1.3312302) q[5];
cx q[9],q[6];
rx(0.79229061) q[2];
t q[8];
cy q[5],q[3];
z q[9];
s q[6];
rzz(5.825813) q[8],q[1];
ccx q[7],q[0],q[2];
u2(5.9472748,5.3199506) q[4];
cswap q[9],q[1],q[4];
u3(2.9742112,4.4982765,1.4018259) q[3];
cswap q[0],q[2],q[5];
h q[6];
rz(4.1850684) q[8];
u2(0.0649014,6.1803337) q[7];
cswap q[8],q[4],q[7];
tdg q[1];
crz(4.7590011) q[2],q[5];
u2(4.8903865,4.6607859) q[6];
swap q[9],q[0];
tdg q[3];
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
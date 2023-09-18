OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
tdg q[6];
s q[3];
ccx q[7],q[0],q[4];
ccx q[8],q[9],q[1];
crz(0.15425642) q[2],q[5];
ccx q[7],q[8],q[4];
cswap q[2],q[1],q[9];
cy q[3],q[6];
t q[5];
h q[0];
cswap q[6],q[5],q[7];
cy q[9],q[4];
y q[1];
cu3(4.8670691,0.82850558,0.55524186) q[8],q[3];
u1(5.8061487) q[0];
h q[2];
cy q[5],q[0];
h q[7];
rz(1.332614) q[1];
ccx q[2],q[6],q[9];
u1(2.5628427) q[4];
cu3(1.5538834,2.8907274,1.5085219) q[8],q[3];
y q[5];
ccx q[3],q[7],q[1];
cswap q[2],q[9],q[0];
rzz(2.9432372) q[8],q[4];
z q[6];
cu3(2.9287921,4.1826057,0.11312424) q[9],q[7];
cswap q[6],q[8],q[0];
cswap q[1],q[2],q[4];
rx(1.6202703) q[3];
z q[5];
ccx q[7],q[2],q[0];
ccx q[4],q[8],q[5];
h q[1];
tdg q[6];
z q[3];
id q[9];
cz q[8],q[3];
swap q[4],q[7];
cswap q[2],q[6],q[1];
crz(4.5192099) q[0],q[9];
s q[5];
ry(2.6890843) q[6];
cswap q[1],q[7],q[3];
ccx q[5],q[2],q[8];
sdg q[9];
cu3(5.9592701,3.1138251,4.863549) q[0],q[4];
u1(5.6816004) q[4];
u2(3.5482616,5.9632492) q[6];
rzz(3.0421267) q[0],q[8];
cswap q[7],q[2],q[1];
ccx q[3],q[9],q[5];
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
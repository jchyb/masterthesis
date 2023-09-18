OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ry(3.4489094) q[5];
sdg q[6];
ccx q[7],q[8],q[4];
cswap q[1],q[0],q[2];
crz(4.3858241) q[9],q[3];
ch q[8],q[2];
tdg q[0];
cz q[7],q[6];
swap q[3],q[4];
u3(2.7194687,1.6120506,2.9343473) q[1];
ch q[9],q[5];
rx(0.89265443) q[4];
cy q[5],q[9];
cswap q[0],q[1],q[8];
u2(3.3187103,4.7235975) q[3];
tdg q[6];
y q[7];
ry(3.1381971) q[2];
ccx q[1],q[8],q[6];
cx q[4],q[9];
id q[3];
cu1(4.2361252) q[2],q[5];
cu3(0.23812045,4.6624571,2.6104767) q[0],q[7];
x q[7];
cx q[1],q[5];
ry(4.4856463) q[0];
cswap q[4],q[3],q[2];
cu1(6.2030362) q[6],q[8];
u2(2.3551071,1.3501884) q[9];
cswap q[6],q[7],q[0];
rx(3.0029046) q[3];
u1(4.9879727) q[4];
cswap q[1],q[8],q[2];
rz(3.1233688) q[9];
u1(2.8357927) q[5];
u1(4.6134681) q[7];
cu1(0.3349997) q[1],q[9];
cy q[6],q[5];
ccx q[8],q[4],q[0];
id q[3];
ry(2.7729518) q[2];
cswap q[5],q[1],q[8];
u1(0.56548586) q[3];
h q[0];
ccx q[7],q[4],q[9];
cy q[2],q[6];
crz(3.9599934) q[5],q[9];
cx q[3],q[8];
cswap q[7],q[1],q[0];
cz q[2],q[6];
y q[4];
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
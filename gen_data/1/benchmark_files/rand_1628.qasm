OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[3],q[4],q[5];
tdg q[7];
ccx q[9],q[0],q[1];
cz q[8],q[2];
u1(2.281774) q[6];
cswap q[2],q[5],q[6];
h q[1];
cswap q[4],q[8],q[3];
ccx q[7],q[9],q[0];
rzz(0.56885396) q[0],q[1];
ccx q[9],q[3],q[2];
ccx q[7],q[4],q[6];
t q[8];
x q[5];
rzz(1.5956115) q[4],q[2];
cy q[9],q[5];
rzz(0.62329877) q[0],q[3];
cswap q[8],q[1],q[7];
u3(4.666606,1.0597397,1.1310102) q[6];
rz(1.7467432) q[2];
sdg q[4];
z q[9];
cswap q[6],q[5],q[8];
cu3(5.0606502,5.8199144,0.42474126) q[7],q[0];
ch q[1],q[3];
cswap q[9],q[6],q[4];
ch q[0],q[5];
crz(3.8288739) q[3],q[7];
cu1(5.1337453) q[1],q[2];
id q[8];
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
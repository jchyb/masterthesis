OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cu1(6.1046906) q[0],q[6];
ccx q[8],q[4],q[7];
cy q[5],q[3];
x q[9];
s q[1];
sdg q[2];
x q[4];
ccx q[7],q[9],q[2];
cswap q[1],q[8],q[6];
rx(5.4685104) q[3];
cy q[0],q[5];
cswap q[3],q[2],q[5];
ch q[0],q[6];
cu1(3.1710833) q[9],q[7];
cy q[8],q[4];
ry(4.6299377) q[1];
u1(4.9850206) q[5];
ccx q[3],q[1],q[6];
cswap q[0],q[8],q[9];
rx(5.7475269) q[7];
ry(2.1011593) q[4];
y q[2];
u1(1.8787007) q[7];
ccx q[8],q[6],q[4];
tdg q[9];
ccx q[2],q[1],q[5];
z q[3];
tdg q[0];
cy q[3],q[8];
rx(0.44402687) q[9];
ccx q[7],q[2],q[0];
ccx q[4],q[6],q[5];
u3(1.2059101,3.7650881,1.6158569) q[1];
rzz(1.7882532) q[1],q[5];
ccx q[9],q[8],q[2];
ch q[4],q[0];
ccx q[6],q[7],q[3];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
u3(5.333842,0.21944768,1.3943291) q[9];
rx(1.2651572) q[5];
id q[0];
y q[3];
cx q[1],q[4];
ccx q[8],q[7],q[2];
rz(3.4845215) q[6];
tdg q[9];
ccx q[7],q[5],q[3];
ch q[0],q[8];
u1(5.9104469) q[4];
u1(1.2616505) q[2];
rzz(1.2922563) q[6],q[1];
ccx q[3],q[2],q[8];
cswap q[7],q[6],q[9];
rz(5.1453206) q[0];
ccx q[5],q[4],q[1];
rx(5.4129608) q[1];
ccx q[8],q[9],q[0];
rx(4.714478) q[7];
cy q[4],q[6];
h q[2];
ch q[5],q[3];
u3(1.6383252,5.1799092,1.7727382) q[2];
h q[6];
sdg q[8];
s q[3];
cz q[0],q[5];
cswap q[9],q[1],q[4];
z q[7];
cu1(3.2216059) q[5],q[4];
swap q[1],q[8];
cswap q[3],q[9],q[7];
swap q[0],q[6];
rx(3.9439453) q[2];
cswap q[8],q[0],q[9];
s q[1];
rz(2.8820549) q[4];
swap q[5],q[3];
ch q[2],q[7];
h q[6];
ccx q[9],q[2],q[0];
cu3(5.5927168,1.3605691,4.9718951) q[6],q[8];
rzz(2.1494122) q[7],q[5];
z q[3];
crz(5.0095186) q[1],q[4];
ccx q[3],q[5],q[4];
ch q[7],q[9];
swap q[6],q[0];
u2(4.5230002,2.6904494) q[8];
ch q[1],q[2];
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

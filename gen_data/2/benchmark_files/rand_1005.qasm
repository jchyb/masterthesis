OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cz q[4],q[7];
cy q[3],q[2];
u3(2.6737256,1.0732049,0.60546731) q[9];
u3(4.8391669,1.570608,3.4795391) q[8];
cx q[5],q[6];
s q[0];
s q[1];
u2(4.1192348,2.0272262) q[3];
rz(1.9547119) q[1];
cy q[5],q[2];
id q[6];
ccx q[8],q[7],q[0];
id q[4];
rz(2.8752577) q[9];
cswap q[9],q[7],q[2];
cswap q[4],q[0],q[1];
cy q[6],q[8];
swap q[3],q[5];
cx q[1],q[4];
ccx q[9],q[2],q[8];
z q[0];
cu3(0.018751262,5.851214,6.0412412) q[5],q[7];
cu1(1.1566557) q[6],q[3];
swap q[9],q[6];
cswap q[4],q[5],q[8];
u2(1.0707991,3.4660584) q[1];
cswap q[3],q[0],q[7];
rx(2.3618813) q[2];
crz(0.96772096) q[9],q[5];
cx q[7],q[3];
u1(1.1995916) q[4];
h q[1];
u2(5.1355489,3.1164738) q[0];
swap q[6],q[2];
rz(0.48528435) q[8];
swap q[0],q[5];
x q[7];
cu3(4.5934385,5.4784259,3.9087092) q[6],q[9];
rz(5.1039574) q[4];
ccx q[2],q[3],q[1];
id q[8];
cswap q[4],q[1],q[3];
ccx q[7],q[9],q[6];
rx(1.6746297) q[0];
cx q[8],q[2];
z q[5];
ccx q[5],q[1],q[3];
cswap q[8],q[4],q[7];
cz q[2],q[6];
sdg q[9];
h q[0];
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
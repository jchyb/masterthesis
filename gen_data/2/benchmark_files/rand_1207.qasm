OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
u2(5.8062573,5.8139483) q[3];
rzz(6.1479464) q[1],q[8];
swap q[0],q[7];
cz q[6],q[2];
cz q[5],q[4];
tdg q[9];
crz(2.4857752) q[1],q[0];
ccx q[2],q[6],q[3];
ccx q[5],q[9],q[7];
cz q[4],q[8];
rzz(5.3736654) q[0],q[3];
cswap q[8],q[5],q[6];
rzz(5.5692149) q[2],q[7];
z q[4];
crz(2.7261248) q[9],q[1];
ccx q[9],q[4],q[5];
cswap q[7],q[0],q[1];
cu1(5.6696251) q[8],q[6];
h q[2];
u2(6.0837453,5.3300244) q[3];
ry(1.2436398) q[2];
u1(4.1514381) q[1];
cswap q[7],q[6],q[3];
tdg q[4];
u3(0.51042594,0.55279285,2.6855778) q[5];
cz q[9],q[8];
tdg q[0];
cswap q[8],q[2],q[3];
u2(5.8512782,5.2466276) q[7];
sdg q[4];
cswap q[0],q[5],q[6];
sdg q[9];
u1(6.2014556) q[1];
rz(5.1013144) q[1];
ccx q[8],q[3],q[0];
y q[7];
id q[5];
tdg q[4];
cu1(5.0787053) q[2],q[6];
x q[9];
cswap q[4],q[3],q[1];
ccx q[0],q[9],q[7];
id q[5];
cu3(5.5187693,5.5961082,0.069529299) q[8],q[6];
y q[2];
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
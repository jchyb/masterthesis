OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
u3(4.1486351,0.36585013,1.6651824) q[8];
cz q[2],q[7];
cy q[1],q[5];
crz(3.9229314) q[4],q[9];
id q[0];
tdg q[6];
rz(4.9715102) q[3];
cswap q[5],q[7],q[8];
ccx q[2],q[9],q[6];
cx q[3],q[0];
h q[1];
s q[4];
cu3(3.1573092,4.1975075,1.5216567) q[2],q[9];
cy q[0],q[1];
s q[6];
cy q[7],q[4];
crz(3.9846512) q[5],q[8];
s q[3];
cz q[0],q[1];
cx q[6],q[7];
cy q[2],q[3];
cu1(4.6381983) q[9],q[5];
crz(3.5287815) q[8],q[4];
s q[7];
cu1(4.9238621) q[3],q[9];
ccx q[1],q[6],q[5];
z q[4];
cswap q[2],q[8],q[0];
swap q[5],q[1];
swap q[0],q[7];
ch q[2],q[3];
t q[4];
cu3(0.44122323,5.1171432,1.3658054) q[6],q[9];
rz(4.5815094) q[8];
ccx q[8],q[0],q[3];
cswap q[1],q[9],q[4];
cu1(5.3077933) q[7],q[6];
u1(4.7695613) q[5];
tdg q[2];
ccx q[3],q[2],q[7];
y q[6];
ccx q[4],q[9],q[5];
cy q[1],q[8];
rx(5.9922985) q[0];
ch q[0],q[2];
cswap q[7],q[6],q[9];
rx(0.61183694) q[4];
id q[5];
ccx q[1],q[8],q[3];
u1(0.72552485) q[7];
ccx q[8],q[0],q[5];
rzz(0.71460427) q[2],q[4];
cswap q[6],q[3],q[9];
id q[1];
t q[1];
cswap q[4],q[6],q[0];
ch q[8],q[2];
u3(5.0641039,0.3165521,0.98805878) q[3];
u2(5.6688018,3.407931) q[7];
t q[9];
z q[5];
ccx q[0],q[1],q[2];
cswap q[3],q[5],q[9];
id q[4];
cu1(1.3703484) q[6],q[8];
y q[7];
u3(5.9001183,4.9701238,0.6312285) q[9];
cswap q[8],q[7],q[0];
ccx q[6],q[2],q[1];
ccx q[4],q[3],q[5];
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
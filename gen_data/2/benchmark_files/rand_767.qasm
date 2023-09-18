OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cz q[6],q[3];
h q[5];
cswap q[4],q[9],q[0];
t q[2];
cx q[1],q[8];
u3(1.6392425,5.6655671,2.5871514) q[7];
y q[1];
y q[4];
t q[9];
u2(3.3885093,5.6840888) q[5];
sdg q[8];
cswap q[3],q[0],q[2];
u3(2.208968,2.6361496,1.0929269) q[6];
rz(5.3318625) q[7];
x q[3];
cu3(3.028581,3.3727096,0.39938698) q[7],q[1];
rz(6.0833537) q[0];
y q[6];
swap q[5],q[2];
ccx q[4],q[9],q[8];
u2(1.8114761,1.6189979) q[2];
cswap q[7],q[8],q[1];
cz q[3],q[6];
h q[4];
swap q[0],q[5];
s q[9];
cswap q[6],q[8],q[2];
rzz(6.262612) q[0],q[5];
crz(0.94873413) q[7],q[9];
rz(4.827866) q[1];
cu3(2.144663,2.7972222,5.3829217) q[4],q[3];
ccx q[7],q[2],q[0];
crz(3.9216392) q[4],q[1];
cswap q[6],q[5],q[9];
ch q[8],q[3];
cy q[9],q[6];
tdg q[7];
cswap q[2],q[5],q[4];
cu1(2.2531357) q[8],q[1];
cu3(1.3485874,4.7027201,1.9987952) q[3],q[0];
cswap q[4],q[3],q[2];
rx(1.9914942) q[6];
rzz(5.2550728) q[5],q[7];
cswap q[9],q[1],q[0];
u3(5.8790432,3.8881164,0.70625098) q[8];
cy q[5],q[6];
h q[3];
cx q[4],q[8];
z q[2];
cswap q[9],q[0],q[1];
u2(3.5366376,0.95165535) q[7];
rzz(5.5136791) q[3],q[1];
cy q[8],q[6];
cz q[7],q[5];
z q[9];
cu3(1.0974825,1.019548,2.459735) q[0],q[4];
u1(2.8782204) q[2];
t q[1];
crz(1.4086167) q[2],q[8];
crz(5.5841159) q[7],q[3];
ccx q[9],q[0],q[5];
crz(2.7569845) q[6],q[4];
ccx q[6],q[0],q[9];
cz q[5],q[7];
h q[8];
cswap q[4],q[3],q[1];
s q[2];
x q[8];
ccx q[5],q[1],q[2];
x q[3];
u3(5.103367,4.2112357,4.3750898) q[0];
cswap q[9],q[4],q[6];
h q[7];
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
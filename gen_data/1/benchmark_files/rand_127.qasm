OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cu1(5.3637828) q[4],q[1];
cswap q[2],q[8],q[3];
ch q[9],q[5];
id q[7];
cz q[6],q[0];
swap q[5],q[6];
cswap q[7],q[0],q[8];
cswap q[4],q[3],q[1];
y q[2];
ry(2.7896456) q[9];
cz q[2],q[1];
rzz(1.3111618) q[3],q[5];
crz(1.0821798) q[8],q[6];
ccx q[4],q[0],q[9];
rz(0.25881685) q[7];
swap q[9],q[6];
cy q[8],q[2];
crz(4.0168) q[3],q[1];
cy q[5],q[7];
cx q[4],q[0];
u3(2.4281181,0.88996305,1.8467803) q[5];
ccx q[4],q[2],q[3];
cu1(5.6450117) q[1],q[6];
cx q[9],q[0];
ch q[7],q[8];
ccx q[4],q[7],q[8];
cswap q[9],q[3],q[6];
u2(4.3790648,5.0345759) q[0];
cz q[2],q[5];
t q[1];
s q[0];
cswap q[2],q[1],q[8];
cu3(3.7991215,5.4924709,4.6293461) q[9],q[4];
x q[7];
s q[3];
rx(4.7679426) q[6];
tdg q[5];
y q[6];
ccx q[5],q[7],q[9];
h q[2];
ry(1.0131586) q[4];
cx q[8],q[3];
crz(0.30126354) q[1],q[0];
ccx q[1],q[6],q[2];
cu1(0.14868705) q[9],q[5];
rzz(0.65732838) q[4],q[7];
cswap q[0],q[3],q[8];
cu3(3.6805451,2.263859,0.36597732) q[4],q[7];
cu3(1.0672132,4.1026762,1.6426205) q[6],q[0];
u2(0.1446508,0.48026822) q[3];
cswap q[8],q[5],q[9];
tdg q[2];
id q[1];
cu3(4.6234213,0.13909775,5.7883024) q[2],q[1];
rx(4.1161762) q[8];
ccx q[6],q[0],q[4];
cswap q[5],q[9],q[3];
u2(2.8764364,4.3409551) q[7];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
h q[6];
cswap q[1],q[5],q[7];
u1(5.6754204) q[8];
ccx q[9],q[0],q[2];
cx q[4],q[3];
swap q[4],q[9];
y q[8];
id q[2];
cu1(0.4761835) q[7],q[5];
cu1(2.3602538) q[0],q[1];
swap q[3],q[6];
cswap q[4],q[1],q[9];
cz q[0],q[2];
swap q[8],q[5];
cswap q[3],q[6],q[7];
h q[6];
ccx q[2],q[3],q[4];
swap q[0],q[7];
swap q[1],q[8];
rx(4.0741298) q[5];
u3(2.8618733,5.3385055,5.6694673) q[9];
cy q[7],q[4];
rz(4.3827215) q[9];
ccx q[5],q[6],q[3];
cswap q[2],q[8],q[0];
rz(3.8097799) q[1];
crz(5.0365831) q[4],q[5];
rzz(2.312733) q[8],q[6];
cy q[7],q[9];
z q[0];
cswap q[1],q[2],q[3];
ch q[0],q[5];
cswap q[9],q[7],q[4];
cz q[3],q[8];
cu1(3.1896225) q[2],q[6];
x q[1];
rzz(4.2824966) q[4],q[1];
z q[9];
ccx q[0],q[5],q[2];
u2(4.751471,3.4826264) q[3];
rzz(1.146903) q[7],q[8];
rz(0.28270934) q[6];
ch q[0],q[3];
rzz(4.2299189) q[4],q[7];
cswap q[5],q[2],q[8];
rzz(2.1378872) q[1],q[6];
u1(3.7581218) q[9];
ccx q[8],q[9],q[3];
ccx q[2],q[7],q[6];
cy q[4],q[1];
z q[5];
sdg q[0];
cx q[8],q[3];
crz(1.7347103) q[9],q[6];
cswap q[0],q[2],q[1];
ccx q[5],q[7],q[4];
rz(1.0626089) q[2];
id q[0];
cu1(6.1801893) q[4],q[5];
cz q[8],q[3];
s q[1];
cu1(3.1899169) q[6],q[7];
id q[9];
x q[4];
y q[8];
u1(5.0994086) q[2];
cswap q[3],q[9],q[1];
cswap q[5],q[6],q[0];
u2(2.7324318,1.0094878) q[7];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rx(1.4146178) q[8];
cswap q[3],q[0],q[5];
id q[7];
ch q[4],q[1];
cswap q[6],q[9],q[2];
cswap q[6],q[4],q[3];
y q[7];
crz(5.7127768) q[1],q[2];
ccx q[5],q[0],q[9];
u1(1.6158862) q[8];
ch q[2],q[3];
t q[5];
cswap q[7],q[1],q[0];
cu3(2.757898,1.3215205,3.8756708) q[6],q[9];
cx q[8],q[4];
ccx q[3],q[6],q[2];
ry(3.0172079) q[7];
cswap q[1],q[8],q[0];
ccx q[5],q[4],q[9];
tdg q[5];
rz(1.5957487) q[1];
cy q[3],q[6];
ch q[9],q[4];
ccx q[0],q[8],q[7];
tdg q[2];
ccx q[3],q[2],q[0];
cswap q[5],q[6],q[8];
swap q[9],q[1];
u2(5.3946269,3.8496687) q[7];
id q[4];
cswap q[6],q[9],q[1];
cswap q[7],q[8],q[2];
u2(5.872228,1.0274996) q[5];
swap q[0],q[4];
h q[3];
s q[9];
ccx q[8],q[1],q[3];
ccx q[4],q[7],q[5];
y q[2];
u2(3.2221579,0.6016033) q[0];
id q[6];
cz q[0],q[2];
cswap q[1],q[3],q[4];
cx q[6],q[8];
ccx q[9],q[5],q[7];
cswap q[5],q[9],q[8];
rzz(2.6711745) q[2],q[7];
swap q[4],q[3];
h q[0];
cz q[6],q[1];
cx q[4],q[0];
cswap q[6],q[5],q[9];
cx q[2],q[1];
u2(5.5335491,4.3508308) q[3];
cx q[7],q[8];
rx(2.5476918) q[4];
ccx q[3],q[5],q[7];
y q[8];
tdg q[9];
cswap q[6],q[1],q[2];
id q[0];
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
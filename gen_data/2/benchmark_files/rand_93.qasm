OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
u2(5.7339407,0.12530884) q[8];
ccx q[6],q[1],q[3];
cswap q[5],q[4],q[2];
cswap q[0],q[7],q[9];
ccx q[7],q[9],q[4];
crz(2.5829029) q[8],q[1];
ccx q[3],q[0],q[6];
ch q[2],q[5];
ccx q[2],q[1],q[7];
rzz(3.4252007) q[8],q[5];
cu3(5.3767342,3.3038946,4.2016591) q[3],q[6];
cz q[9],q[0];
h q[4];
cz q[4],q[2];
cx q[5],q[8];
cz q[9],q[1];
swap q[0],q[6];
t q[3];
ry(1.386939) q[7];
cz q[4],q[9];
sdg q[8];
ccx q[1],q[0],q[6];
rz(1.2371886) q[2];
ccx q[7],q[3],q[5];
u2(0.63568982,3.3895803) q[7];
cswap q[4],q[2],q[6];
cz q[5],q[0];
ry(4.0151112) q[8];
cy q[9],q[1];
y q[3];
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
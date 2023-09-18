OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
u2(5.9431288,1.0242894) q[8];
rz(2.2443733) q[3];
cu1(0.1798034) q[0],q[5];
cswap q[7],q[1],q[4];
sdg q[2];
s q[9];
ry(2.556266) q[6];
t q[9];
ccx q[1],q[7],q[0];
cx q[4],q[3];
ccx q[2],q[5],q[8];
h q[6];
crz(3.5545993) q[4],q[6];
cswap q[2],q[0],q[9];
ch q[7],q[3];
cswap q[5],q[8],q[1];
cswap q[9],q[8],q[1];
swap q[0],q[5];
cswap q[4],q[6],q[7];
rz(2.5969985) q[2];
y q[3];
cz q[4],q[6];
swap q[7],q[1];
sdg q[9];
crz(6.1162284) q[0],q[3];
cswap q[2],q[8],q[5];
cx q[4],q[7];
ccx q[1],q[9],q[8];
ccx q[3],q[6],q[2];
u1(3.6893059) q[5];
u2(1.1701717,5.0203287) q[0];
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
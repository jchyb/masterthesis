OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
crz(0.071237847) q[7],q[0];
cz q[5],q[3];
sdg q[6];
cz q[1],q[4];
u1(2.0263112) q[8];
ch q[2],q[9];
y q[7];
ccx q[4],q[0],q[3];
y q[6];
h q[5];
u2(6.2156853,0.23111038) q[1];
ccx q[8],q[2],q[9];
cswap q[9],q[0],q[5];
z q[8];
cz q[1],q[7];
cswap q[4],q[3],q[6];
tdg q[2];
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
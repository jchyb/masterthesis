OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[7],q[6],q[4];
ch q[1],q[5];
cswap q[2],q[9],q[3];
ch q[0],q[8];
crz(1.8552669) q[6],q[8];
ccx q[2],q[1],q[0];
ccx q[9],q[4],q[5];
s q[7];
rx(5.400658) q[3];
ccx q[2],q[0],q[3];
cu3(0.96988664,5.1483155,5.586692) q[6],q[9];
swap q[1],q[7];
x q[5];
crz(3.4378287) q[8],q[4];
cy q[3],q[9];
tdg q[1];
cswap q[7],q[8],q[5];
x q[2];
ccx q[6],q[0],q[4];
ccx q[5],q[4],q[6];
z q[1];
u3(1.2651387,1.4631886,5.3983551) q[2];
y q[3];
ccx q[7],q[9],q[0];
s q[8];
h q[4];
y q[8];
u2(1.8506215,4.7059162) q[3];
swap q[5],q[0];
cu1(4.1574364) q[1],q[2];
cswap q[6],q[9],q[7];
ccx q[4],q[5],q[3];
cu3(4.8888136,1.9823607,3.2168816) q[0],q[6];
ccx q[2],q[9],q[1];
tdg q[8];
rz(3.1008857) q[7];
ccx q[8],q[7],q[5];
u2(1.6383898,5.0784307) q[2];
ccx q[6],q[9],q[0];
u3(3.0018861,4.5282228,0.67080963) q[3];
cz q[4],q[1];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rz(4.8203921) q[1];
y q[4];
ccx q[7],q[8],q[3];
t q[5];
ccx q[0],q[6],q[9];
tdg q[2];
cswap q[6],q[8],q[2];
u3(0.90772188,5.3172073,6.2127283) q[1];
cz q[4],q[9];
cu3(1.8989129,2.0272866,3.0407626) q[7],q[0];
t q[3];
tdg q[5];
cy q[4],q[1];
t q[5];
s q[7];
cswap q[9],q[8],q[3];
s q[2];
s q[6];
s q[0];
cu1(2.3563793) q[0],q[2];
t q[5];
id q[8];
swap q[3],q[6];
y q[1];
cswap q[4],q[7],q[9];
ccx q[6],q[8],q[0];
cswap q[4],q[3],q[7];
u2(4.9871235,3.0132678) q[2];
cswap q[9],q[1],q[5];
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
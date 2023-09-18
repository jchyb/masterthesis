OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[8],q[2],q[7];
cswap q[6],q[5],q[3];
tdg q[0];
ccx q[4],q[1],q[9];
ch q[2],q[7];
y q[8];
cx q[1],q[6];
cu1(2.6945499) q[5],q[4];
ccx q[9],q[0],q[3];
id q[3];
s q[5];
cu3(1.81063,2.8945756,1.7688071) q[7],q[6];
cswap q[2],q[4],q[0];
rx(0.55166029) q[8];
rz(4.1366735) q[9];
u1(4.3989392) q[1];
swap q[2],q[4];
cswap q[6],q[9],q[0];
ccx q[8],q[7],q[1];
crz(2.1568751) q[3],q[5];
u1(3.7585744) q[5];
ch q[0],q[7];
cu3(1.7601653,3.5529158,5.6124749) q[8],q[4];
ch q[9],q[3];
cz q[2],q[6];
rz(5.6902197) q[1];
ccx q[1],q[9],q[5];
s q[6];
cz q[4],q[8];
cu1(4.4151105) q[2],q[7];
ch q[3],q[0];
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
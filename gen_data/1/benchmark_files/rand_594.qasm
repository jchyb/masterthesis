OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rzz(4.1524779) q[6],q[9];
ccx q[3],q[5],q[8];
x q[0];
cy q[7],q[2];
y q[1];
tdg q[4];
ccx q[2],q[5],q[0];
id q[4];
cswap q[6],q[8],q[9];
ccx q[3],q[7],q[1];
crz(1.8450746) q[6],q[8];
cswap q[9],q[5],q[0];
ccx q[1],q[7],q[3];
z q[2];
id q[4];
cswap q[5],q[3],q[6];
ch q[1],q[0];
ccx q[9],q[2],q[7];
tdg q[8];
tdg q[4];
ch q[4],q[7];
z q[8];
cx q[9],q[2];
id q[0];
cswap q[6],q[5],q[1];
ry(5.8817312) q[3];
cu3(1.1845225,0.49955548,0.10269853) q[9],q[6];
cu1(4.254053) q[8],q[2];
cu3(3.6158012,3.0511134,5.5935544) q[7],q[3];
cz q[1],q[4];
ch q[5],q[0];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[2],q[7],q[0];
swap q[3],q[4];
swap q[5],q[9];
h q[1];
tdg q[6];
rx(3.6958899) q[8];
cx q[6],q[7];
cswap q[0],q[2],q[8];
cu1(5.3077315) q[4],q[1];
ccx q[5],q[9],q[3];
rzz(1.0713778) q[3],q[4];
cswap q[6],q[7],q[5];
cy q[2],q[1];
cswap q[9],q[8],q[0];
u1(0.49071301) q[3];
z q[2];
rx(0.55398649) q[4];
x q[9];
cu3(1.4967528,5.4781853,1.311895) q[7],q[0];
h q[5];
u1(0.31370718) q[6];
cz q[8],q[1];
rzz(4.5984318) q[1],q[3];
x q[9];
ry(3.8024445) q[8];
ch q[4],q[5];
ccx q[2],q[7],q[0];
y q[6];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cx q[7],q[2];
x q[5];
crz(0.68762841) q[4],q[6];
s q[3];
cx q[8],q[9];
x q[0];
t q[1];
swap q[5],q[0];
cswap q[2],q[3],q[1];
s q[9];
ccx q[7],q[8],q[4];
id q[6];
ry(3.7056662) q[5];
cz q[8],q[7];
swap q[9],q[2];
rzz(0.00094251197) q[6],q[4];
crz(3.7270661) q[1],q[3];
y q[0];
cswap q[8],q[3],q[5];
cswap q[9],q[1],q[6];
cswap q[4],q[2],q[7];
tdg q[0];
h q[7];
u3(4.5098048,2.8134246,2.7863064) q[1];
swap q[5],q[2];
cswap q[8],q[0],q[6];
swap q[4],q[3];
u1(1.1128586) q[9];
rzz(5.0849759) q[5],q[9];
id q[7];
cz q[3],q[1];
t q[4];
h q[2];
ccx q[8],q[6],q[0];
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
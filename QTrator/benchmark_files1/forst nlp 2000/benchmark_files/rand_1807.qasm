OPENQASM 2.0;
include "qelib1.inc";
qreg q[13];
creg c[13];
cswap q[3],q[7],q[11];
ry(1.421203) q[2];
swap q[6],q[4];
rzz(4.6221514) q[9],q[0];
rzz(5.3399686) q[8],q[5];
cswap q[10],q[1],q[12];
swap q[8],q[12];
cswap q[9],q[1],q[7];
t q[10];
cswap q[2],q[0],q[4];
ccx q[5],q[3],q[11];
u2(1.8733052,6.121438) q[6];
y q[11];
h q[7];
id q[12];
t q[2];
cswap q[10],q[4],q[9];
z q[3];
cx q[0],q[8];
cz q[1],q[6];
h q[5];
u2(4.9367522,4.9037978) q[12];
ccx q[5],q[11],q[7];
cswap q[0],q[3],q[9];
u3(3.5207391,1.5118729,1.5262145) q[1];
cswap q[4],q[10],q[8];
cu3(4.6853268,4.7081083,3.2583647) q[6],q[2];
cswap q[12],q[0],q[8];
t q[9];
ry(4.6576603) q[10];
cswap q[4],q[6],q[1];
tdg q[3];
t q[7];
ccx q[2],q[5],q[11];
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
measure q[10] -> c[10];
measure q[11] -> c[11];
measure q[12] -> c[12];
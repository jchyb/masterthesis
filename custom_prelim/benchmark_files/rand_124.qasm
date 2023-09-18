OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rzz(2.663637) q[8],q[6];
cu1(3.5427389) q[3],q[9];
rzz(0.56514177) q[5],q[7];
crz(0.85615936) q[1],q[4];
t q[2];
u2(4.0466262,4.1145888) q[0];
ccx q[3],q[0],q[9];
tdg q[2];
cswap q[4],q[7],q[5];
cu3(5.2511779,3.2562607,5.5434299) q[6],q[1];
id q[8];
cswap q[7],q[2],q[9];
cy q[1],q[5];
ch q[6],q[4];
swap q[8],q[3];
s q[0];
cx q[6],q[2];
swap q[7],q[1];
t q[3];
cy q[8],q[5];
sdg q[0];
cx q[4],q[9];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[0],q[8],q[7];
ccx q[3],q[9],q[1];
id q[6];
ccx q[5],q[4],q[2];
ccx q[2],q[8],q[6];
rzz(2.844106) q[0],q[3];
ccx q[1],q[9],q[7];
ch q[4],q[5];
cswap q[1],q[0],q[8];
id q[2];
swap q[9],q[7];
sdg q[3];
ccx q[4],q[6],q[5];
ccx q[4],q[5],q[2];
cswap q[9],q[8],q[6];
ccx q[3],q[0],q[7];
u3(4.24732,0.1649643,1.0934989) q[1];
u1(3.0754132) q[9];
cswap q[7],q[3],q[4];
id q[0];
cz q[8],q[2];
cu1(0.0051416588) q[1],q[6];
tdg q[5];
cswap q[9],q[3],q[1];
crz(4.8706791) q[2],q[0];
cx q[6],q[7];
u2(1.2977379,1.0154818) q[8];
u3(3.5212735,5.2940044,1.3933553) q[5];
rz(3.139016) q[4];
ch q[6],q[3];
cswap q[7],q[5],q[0];
x q[9];
ccx q[4],q[2],q[8];
u2(2.3781685,4.7593835) q[1];
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
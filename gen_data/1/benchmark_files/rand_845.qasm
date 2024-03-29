OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[0],q[2],q[3];
rz(0.44281995) q[5];
u1(2.0741061) q[9];
y q[1];
z q[4];
cswap q[8],q[6],q[7];
cu3(1.1753116,4.8226469,5.2843926) q[3],q[2];
cz q[4],q[0];
rz(0.058409443) q[8];
cz q[7],q[6];
cu1(4.194767) q[9],q[5];
s q[1];
h q[8];
ry(0.70919137) q[3];
cx q[5],q[6];
cu3(5.7766456,0.073320918,0.40509149) q[0],q[2];
cz q[1],q[7];
swap q[9],q[4];
cx q[0],q[6];
y q[1];
ccx q[4],q[5],q[8];
cswap q[9],q[7],q[3];
u2(3.5681338,3.3173893) q[2];
tdg q[6];
tdg q[1];
ch q[7],q[4];
ccx q[3],q[0],q[5];
cz q[8],q[9];
tdg q[2];
ch q[5],q[3];
u3(2.169738,2.9885192,6.023129) q[0];
u1(4.8838388) q[9];
ch q[6],q[2];
cu3(3.4218755,5.8310415,4.7384542) q[4],q[1];
s q[7];
u3(4.0601584,3.8303597,3.474009) q[8];
u2(5.8273639,4.611051) q[5];
cx q[8],q[0];
cx q[3],q[1];
cy q[6],q[2];
cy q[4],q[9];
h q[7];
cswap q[8],q[9],q[1];
rz(0.083264965) q[7];
ccx q[6],q[0],q[2];
id q[5];
id q[4];
rz(0.29238962) q[3];
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

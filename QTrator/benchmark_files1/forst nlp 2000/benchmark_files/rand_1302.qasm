OPENQASM 2.0;
include "qelib1.inc";
qreg q[8];
creg c[8];
cu1(1.9374377) q[2],q[1];
x q[0];
cx q[7],q[3];
cy q[5],q[6];
id q[4];
ccx q[7],q[6],q[4];
crz(5.4705929) q[1],q[0];
t q[5];
swap q[2],q[3];
tdg q[6];
z q[2];
crz(4.4770766) q[3],q[1];
rz(3.3058426) q[4];
cu3(1.9036604,5.0905049,3.82394) q[5],q[0];
y q[7];
ccx q[3],q[1],q[5];
cswap q[4],q[0],q[2];
swap q[6],q[7];
rzz(2.0948781) q[1],q[2];
ccx q[3],q[4],q[5];
u1(4.7688287) q[6];
s q[0];
ry(4.4146923) q[7];
sdg q[3];
rzz(4.4954074) q[0],q[5];
rzz(2.8026676) q[2],q[4];
cswap q[6],q[1],q[7];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];

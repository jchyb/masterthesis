OPENQASM 2.0;
include "qelib1.inc";
qreg q[6];
creg c[6];
ch q[3],q[1];
cswap q[0],q[2],q[4];
u2(0.046394436,5.2968138) q[5];
y q[3];
cx q[0],q[2];
ccx q[5],q[4],q[1];
cu3(1.6315304,5.8613234,3.3995318) q[3],q[5];
id q[0];
s q[4];
ch q[2],q[1];
ccx q[5],q[3],q[4];
cx q[0],q[1];
u2(4.5181533,1.5578239) q[2];
cswap q[1],q[4],q[5];
ch q[0],q[3];
h q[2];
crz(4.4856338) q[0],q[5];
u1(2.6695537) q[3];
cy q[4],q[2];
sdg q[1];
cy q[3],q[5];
cswap q[4],q[0],q[1];
rx(1.8907584) q[2];
u2(4.0425999,1.3159699) q[2];
ccx q[0],q[1],q[4];
crz(4.0396423) q[3],q[5];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];

OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cu3(2.939839,3.383476,4.8747239) q[0],q[2];
cx q[3],q[8];
cx q[7],q[6];
ccx q[1],q[5],q[4];
t q[9];
ccx q[6],q[8],q[5];
cswap q[7],q[4],q[9];
ccx q[2],q[0],q[3];
rx(5.2727772) q[1];
ccx q[9],q[8],q[1];
cswap q[6],q[3],q[2];
sdg q[4];
s q[5];
ch q[0],q[7];
u1(4.8866231) q[9];
ccx q[1],q[6],q[7];
rx(5.2917181) q[0];
ccx q[3],q[2],q[8];
id q[5];
rx(2.9189885) q[4];
ccx q[4],q[1],q[7];
cu1(4.4897008) q[2],q[6];
cy q[0],q[8];
cu3(1.8891696,2.8199853,4.7052146) q[3],q[9];
h q[5];
ccx q[8],q[4],q[2];
rzz(2.7130522) q[1],q[6];
crz(1.919654) q[7],q[5];
rz(5.1975753) q[0];
crz(4.2736175) q[3],q[9];
rz(1.5372054) q[6];
cu3(5.0209875,4.8792594,0.95269051) q[7],q[9];
cz q[4],q[0];
ccx q[3],q[8],q[2];
t q[1];
t q[5];
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
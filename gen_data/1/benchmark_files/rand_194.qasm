OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[8],q[6],q[5];
ry(4.260085) q[1];
ccx q[0],q[7],q[9];
ccx q[4],q[3],q[2];
ch q[0],q[4];
tdg q[8];
cu3(6.0142159,0.64048394,1.1741651) q[1],q[6];
cu1(1.2520196) q[9],q[2];
ccx q[3],q[5],q[7];
ccx q[9],q[1],q[6];
h q[0];
cswap q[8],q[5],q[7];
cu3(2.6161332,0.89105056,0.43132754) q[3],q[4];
tdg q[2];
cy q[2],q[9];
cswap q[1],q[0],q[5];
cu1(2.004362) q[6],q[4];
tdg q[8];
rzz(4.7887277) q[3],q[7];
ccx q[1],q[0],q[4];
cswap q[3],q[2],q[6];
cswap q[7],q[9],q[5];
u3(5.8705413,4.9875046,2.8270388) q[8];
id q[0];
id q[3];
ry(4.9485254) q[6];
ccx q[7],q[2],q[5];
cswap q[9],q[8],q[1];
u3(6.234196,0.26095355,2.9127769) q[4];
ccx q[6],q[1],q[8];
ccx q[5],q[2],q[0];
s q[4];
t q[9];
cu1(0.55267815) q[3],q[7];
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
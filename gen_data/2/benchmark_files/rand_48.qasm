OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
sdg q[6];
ch q[2],q[9];
cswap q[8],q[7],q[5];
cy q[0],q[3];
cu3(4.0494875,2.5291179,0.35037188) q[4],q[1];
cswap q[1],q[4],q[0];
ccx q[7],q[9],q[2];
cswap q[3],q[6],q[5];
u1(3.8547331) q[8];
cswap q[3],q[6],q[9];
cswap q[8],q[7],q[2];
ch q[5],q[0];
h q[4];
tdg q[1];
ccx q[3],q[7],q[5];
u2(2.4408643,5.3170153) q[0];
sdg q[8];
ccx q[6],q[9],q[2];
s q[1];
rx(5.6278133) q[4];
ccx q[0],q[2],q[5];
cswap q[8],q[6],q[1];
ch q[7],q[4];
z q[3];
sdg q[9];
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
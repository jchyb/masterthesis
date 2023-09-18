OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[5],q[8],q[3];
u2(4.1372571,5.2121701) q[2];
cu1(4.9269635) q[0],q[7];
cswap q[4],q[1],q[9];
rz(3.712) q[6];
rx(6.1809073) q[9];
ccx q[2],q[1],q[3];
cswap q[4],q[5],q[6];
ccx q[8],q[7],q[0];
cu1(2.3432686) q[5],q[6];
z q[0];
cswap q[4],q[7],q[8];
z q[3];
cu3(3.1157587,0.84144244,4.3114247) q[9],q[2];
h q[1];
cy q[9],q[0];
tdg q[5];
ccx q[3],q[7],q[6];
cy q[8],q[1];
ch q[4],q[2];
cz q[7],q[5];
cu3(2.0474779,2.5240761,0.85075939) q[4],q[3];
cswap q[8],q[0],q[1];
sdg q[9];
cy q[2],q[6];
u2(2.1743574,3.2441847) q[7];
s q[8];
cswap q[4],q[5],q[6];
ccx q[1],q[9],q[3];
cu1(3.2766416) q[0],q[2];
cz q[4],q[1];
tdg q[6];
cswap q[3],q[8],q[0];
cz q[5],q[7];
swap q[9],q[2];
cu3(0.41205401,3.6137737,5.2856956) q[9],q[2];
cu1(1.9557616) q[6],q[3];
cx q[0],q[4];
cswap q[1],q[7],q[5];
id q[8];
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
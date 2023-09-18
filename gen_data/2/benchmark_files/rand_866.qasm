OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[0],q[6],q[9];
ccx q[8],q[3],q[5];
x q[7];
cswap q[4],q[2],q[1];
cu3(2.728523,4.3142527,4.4098178) q[0],q[3];
cswap q[4],q[1],q[6];
rzz(0.86103771) q[5],q[9];
ccx q[2],q[7],q[8];
crz(6.107709) q[6],q[4];
s q[8];
crz(5.3342856) q[2],q[9];
ry(3.4852636) q[3];
ccx q[1],q[7],q[5];
h q[0];
cswap q[1],q[4],q[8];
cu3(2.4382582,2.8828172,2.4306337) q[2],q[6];
cswap q[7],q[9],q[0];
crz(5.6762083) q[5],q[3];
swap q[0],q[4];
cswap q[5],q[8],q[3];
h q[2];
cx q[1],q[6];
s q[9];
ry(4.6832879) q[7];
z q[7];
cx q[4],q[1];
cswap q[3],q[5],q[9];
cswap q[8],q[2],q[0];
id q[6];
h q[5];
cswap q[0],q[9],q[1];
tdg q[8];
ch q[2],q[7];
t q[4];
cu1(2.7153255) q[3],q[6];
swap q[2],q[3];
rx(1.7507969) q[9];
ccx q[5],q[1],q[6];
ccx q[0],q[7],q[4];
rz(1.9318852) q[8];
rzz(0.55884144) q[2],q[5];
ccx q[4],q[7],q[1];
cx q[9],q[6];
ccx q[8],q[0],q[3];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[3],q[1],q[5];
s q[7];
ccx q[8],q[4],q[9];
cu1(2.2505521) q[2],q[0];
rx(3.9433873) q[6];
cswap q[7],q[0],q[4];
cx q[1],q[5];
ccx q[8],q[2],q[6];
cy q[9],q[3];
ccx q[9],q[8],q[7];
x q[1];
rz(5.2291139) q[6];
sdg q[4];
cswap q[3],q[5],q[2];
u3(1.7327212,6.2583117,0.46385176) q[0];
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
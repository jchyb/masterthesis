OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
sdg q[6];
x q[9];
crz(0.39425424) q[8],q[2];
tdg q[7];
u2(4.8096399,4.7075626) q[0];
tdg q[3];
cu3(4.512766,5.6594257,1.32448) q[5],q[4];
x q[1];
cx q[4],q[9];
ccx q[6],q[1],q[8];
rzz(4.0493212) q[7],q[5];
cswap q[0],q[3],q[2];
cu1(5.7887967) q[6],q[8];
cswap q[9],q[2],q[7];
swap q[1],q[0];
u3(5.4530768,5.5689675,4.3159983) q[4];
cz q[5],q[3];
cswap q[7],q[9],q[5];
ry(3.6645126) q[2];
cswap q[4],q[3],q[8];
cswap q[0],q[1],q[6];
sdg q[8];
cu3(4.1885834,5.9551931,3.1976326) q[4],q[3];
z q[5];
cswap q[0],q[1],q[6];
cz q[2],q[9];
x q[7];
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
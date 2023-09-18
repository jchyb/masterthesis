OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[0],q[8],q[6];
cswap q[4],q[1],q[9];
ccx q[7],q[3],q[2];
id q[5];
u3(5.5021112,4.0080799,0.3555488) q[3];
id q[2];
cswap q[4],q[5],q[1];
ccx q[6],q[9],q[7];
cz q[0],q[8];
rzz(5.9136539) q[1],q[3];
ccx q[0],q[5],q[9];
y q[7];
swap q[4],q[2];
rx(4.7767706) q[6];
u1(5.1988112) q[8];
y q[5];
cswap q[3],q[4],q[1];
z q[9];
tdg q[8];
cy q[2],q[6];
cu3(0.47883172,2.1211892,2.0194321) q[0],q[7];
ccx q[5],q[2],q[0];
u1(1.2411152) q[7];
swap q[1],q[9];
t q[8];
cswap q[3],q[4],q[6];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[8];
creg c[8];
rx(2.7818365) q[2];
cu3(0.51833962,6.1162096,0.31254103) q[5],q[6];
id q[3];
cy q[0],q[7];
h q[1];
y q[4];
ccx q[7],q[1],q[0];
u2(4.2347315,0.63957065) q[4];
h q[5];
tdg q[6];
crz(0.099175322) q[2],q[3];
id q[7];
ccx q[6],q[4],q[5];
ry(2.5440535) q[2];
cswap q[1],q[0],q[3];
ccx q[6],q[5],q[2];
ccx q[1],q[7],q[0];
tdg q[4];
rz(4.0767) q[3];
cz q[1],q[4];
ch q[2],q[5];
tdg q[7];
cy q[6],q[3];
u2(4.5322853,5.7069606) q[0];
ry(4.9500626) q[5];
t q[4];
swap q[7],q[1];
x q[3];
cx q[0],q[6];
u3(4.7765429,2.5242728,3.2691555) q[2];
u1(4.9096515) q[1];
cswap q[7],q[6],q[3];
ccx q[4],q[5],q[0];
ry(4.6347724) q[2];
cy q[2],q[0];
u2(0.27238502,5.1977726) q[7];
cy q[1],q[6];
z q[3];
swap q[4],q[5];
sdg q[0];
cz q[2],q[3];
cswap q[4],q[1],q[7];
cz q[5],q[6];
u3(5.3519696,2.2059017,6.0024462) q[1];
z q[4];
z q[6];
z q[2];
h q[5];
ch q[0],q[7];
u1(3.7907959) q[3];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];

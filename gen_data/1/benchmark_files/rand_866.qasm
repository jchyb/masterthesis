OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rx(2.1015028) q[4];
u2(4.7196992,2.4310079) q[6];
ccx q[1],q[5],q[0];
sdg q[7];
u2(2.8403603,2.0816994) q[2];
cu3(0.85902715,0.9191215,4.9491302) q[9],q[3];
u3(4.6931635,4.8596463,4.4351354) q[8];
rz(6.1136859) q[4];
cswap q[3],q[0],q[7];
sdg q[5];
tdg q[9];
rx(5.6192276) q[2];
z q[6];
y q[1];
x q[8];
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
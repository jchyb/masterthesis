OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
crz(3.0606336) q[0],q[7];
cz q[5],q[6];
y q[1];
cswap q[2],q[8],q[3];
sdg q[4];
u2(4.9538056,0.7365306) q[9];
cu1(5.6886345) q[5],q[0];
crz(5.7742971) q[2],q[4];
ry(1.3458712) q[3];
u2(0.54468463,1.9382755) q[9];
u3(1.3499,2.5182273,2.5106555) q[1];
cswap q[6],q[7],q[8];
t q[2];
t q[1];
ccx q[8],q[9],q[5];
rz(5.1101947) q[4];
id q[7];
cx q[3],q[6];
y q[0];
swap q[9],q[8];
cy q[3],q[0];
cy q[5],q[1];
cu3(4.9466666,1.8767754,2.9878308) q[2],q[6];
s q[4];
rz(0.96779287) q[7];
cy q[2],q[9];
ccx q[3],q[4],q[8];
ccx q[6],q[1],q[0];
cy q[5],q[7];
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
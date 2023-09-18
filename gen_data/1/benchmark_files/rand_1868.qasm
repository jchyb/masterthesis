OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[7],q[3],q[9];
ccx q[0],q[5],q[4];
ccx q[1],q[6],q[2];
tdg q[8];
h q[6];
h q[7];
ccx q[4],q[8],q[1];
cy q[9],q[5];
t q[3];
u1(2.0176292) q[2];
y q[0];
ccx q[2],q[8],q[3];
ccx q[1],q[9],q[6];
tdg q[4];
tdg q[0];
swap q[7],q[5];
crz(5.3688236) q[1],q[6];
cswap q[9],q[5],q[8];
cu3(5.7931625,2.1230765,5.2493476) q[7],q[2];
cswap q[0],q[3],q[4];
z q[3];
crz(4.2281825) q[6],q[0];
rz(5.7157496) q[1];
ch q[5],q[7];
u1(0.312427) q[8];
ccx q[9],q[4],q[2];
ccx q[0],q[6],q[8];
swap q[1],q[4];
s q[5];
u2(5.8670481,1.9575749) q[2];
sdg q[9];
u1(5.7771887) q[3];
t q[7];
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
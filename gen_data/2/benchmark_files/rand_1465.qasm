OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[3],q[0],q[7];
y q[8];
cu1(2.7298103) q[9],q[1];
y q[2];
rzz(1.7666051) q[5],q[4];
u2(2.0431001,0.29332797) q[6];
cx q[9],q[1];
cu3(5.0965904,3.6738019,1.5075937) q[7],q[5];
y q[6];
cx q[8],q[4];
rz(5.2475293) q[0];
cu1(1.318876) q[2],q[3];
cx q[1],q[2];
ccx q[7],q[0],q[8];
ccx q[9],q[6],q[3];
cu3(3.9719228,3.2438436,2.994448) q[5],q[4];
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
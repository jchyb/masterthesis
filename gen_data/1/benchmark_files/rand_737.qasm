OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[3],q[1],q[6];
ccx q[8],q[0],q[7];
s q[9];
cu1(1.1421927) q[4],q[2];
y q[5];
ry(0.82516626) q[1];
cu3(3.749619,2.5950928,2.7386324) q[7],q[8];
cy q[4],q[9];
swap q[0],q[6];
ccx q[5],q[2],q[3];
cy q[2],q[5];
ccx q[8],q[1],q[0];
ry(1.382288) q[3];
cswap q[7],q[9],q[4];
h q[6];
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
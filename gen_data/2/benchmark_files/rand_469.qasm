OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[6],q[3],q[8];
cswap q[0],q[4],q[9];
ccx q[5],q[2],q[7];
s q[1];
cz q[1],q[7];
sdg q[5];
y q[4];
cswap q[0],q[3],q[6];
crz(2.6252953) q[2],q[8];
rz(1.3701164) q[9];
ccx q[4],q[5],q[8];
u1(5.8883657) q[6];
ry(2.0572247) q[2];
ccx q[0],q[1],q[9];
cy q[7],q[3];
cu1(2.9672117) q[5],q[9];
x q[3];
h q[0];
cy q[8],q[2];
ccx q[1],q[7],q[6];
x q[4];
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

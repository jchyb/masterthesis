OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rzz(0.83513277) q[7],q[2];
ccx q[1],q[8],q[5];
cz q[3],q[0];
ccx q[6],q[9],q[4];
ch q[3],q[8];
ry(3.7454736) q[4];
u2(2.3040526,2.0148116) q[6];
cy q[7],q[9];
cu1(6.2244431) q[0],q[5];
crz(1.9502425) q[1],q[2];
cx q[8],q[0];
rx(0.97861111) q[3];
crz(4.8829657) q[9],q[1];
ccx q[2],q[5],q[7];
crz(6.2718418) q[4],q[6];
crz(1.7822016) q[4],q[0];
ccx q[3],q[8],q[6];
ch q[5],q[7];
cu1(1.6361086) q[9],q[1];
z q[2];
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
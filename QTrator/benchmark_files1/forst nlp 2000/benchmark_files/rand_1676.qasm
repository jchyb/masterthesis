OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
creg c[7];
t q[3];
ccx q[2],q[5],q[6];
u3(0.96831293,3.2102702,2.0979407) q[0];
u3(2.8588761,0.82277521,2.4690619) q[4];
ry(0.47107398) q[1];
cu3(4.8466978,5.3367304,1.7650064) q[2],q[3];
ch q[0],q[5];
cz q[4],q[1];
y q[6];
tdg q[4];
cy q[6],q[5];
cswap q[3],q[1],q[0];
x q[2];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
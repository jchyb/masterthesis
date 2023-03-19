OPENQASM 2.0;
include "qelib1.inc";
qreg q[11];
creg c[11];
u1(0.28992788) q[3];
z q[7];
ccx q[4],q[0],q[5];
cu3(3.7492528,3.3814706,0.27864579) q[6],q[1];
cx q[2],q[9];
cx q[8],q[10];
ccx q[3],q[9],q[0];
ch q[1],q[4];
x q[6];
ccx q[7],q[10],q[2];
u3(5.7055862,2.5502268,0.90608333) q[8];
ry(4.9060349) q[5];
cswap q[10],q[0],q[3];
u2(3.8567423,3.7368568) q[5];
ccx q[9],q[7],q[2];
cy q[4],q[6];
sdg q[1];
h q[8];
crz(3.0489126) q[9],q[1];
ccx q[7],q[2],q[5];
rzz(5.7072405) q[10],q[0];
cu3(1.0775222,2.6255573,4.3281418) q[4],q[8];
x q[6];
u2(2.4170571,1.9406024) q[3];
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
measure q[10] -> c[10];

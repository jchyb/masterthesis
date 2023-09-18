OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
crz(5.4436112) q[7],q[9];
crz(2.4768608) q[0],q[2];
h q[1];
cswap q[5],q[8],q[4];
rzz(3.6832883) q[6],q[3];
ccx q[7],q[8],q[9];
ry(0.093617451) q[0];
crz(1.4676644) q[5],q[3];
cx q[1],q[6];
ry(2.1045461) q[4];
u3(2.5369576,0.45788925,4.3062176) q[2];
u2(2.9875527,3.101068) q[6];
id q[9];
y q[4];
s q[7];
u2(0.23519073,1.3153702) q[5];
ccx q[1],q[2],q[0];
crz(2.9757061) q[3],q[8];
cswap q[9],q[3],q[0];
h q[8];
cy q[2],q[6];
ccx q[7],q[5],q[1];
u2(6.2479717,3.0014986) q[4];
ccx q[4],q[0],q[9];
s q[2];
ccx q[6],q[1],q[5];
sdg q[3];
cx q[8],q[7];
cy q[7],q[3];
cu3(0.97867536,1.3866157,2.5833386) q[8],q[5];
s q[2];
cy q[9],q[6];
tdg q[0];
u3(5.4430552,3.6234515,6.1263127) q[1];
u3(5.7621279,1.2627847,4.1666804) q[4];
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
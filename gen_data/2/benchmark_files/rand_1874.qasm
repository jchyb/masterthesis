OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
sdg q[8];
cu1(4.0495142) q[0],q[6];
cu1(3.8728948) q[2],q[1];
cu3(2.7437076,1.3342369,4.4102872) q[5],q[3];
swap q[9],q[4];
z q[7];
cz q[2],q[6];
ccx q[7],q[4],q[5];
u3(6.2587831,5.6855112,4.8887629) q[1];
u3(4.8890359,0.18820664,4.8958459) q[9];
ccx q[8],q[0],q[3];
y q[9];
ccx q[6],q[3],q[1];
u3(2.7494735,5.3841178,5.0591025) q[5];
crz(0.65438067) q[7],q[0];
cz q[2],q[8];
ry(5.9991582) q[4];
s q[8];
cx q[6],q[7];
ch q[2],q[4];
cx q[0],q[5];
ccx q[9],q[3],q[1];
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
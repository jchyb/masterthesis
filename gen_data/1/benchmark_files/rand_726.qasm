OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rzz(5.4426573) q[6],q[0];
ccx q[4],q[5],q[7];
u3(3.0976203,3.5812613,6.2184109) q[9];
ccx q[1],q[2],q[8];
rx(0.81660913) q[3];
ccx q[3],q[0],q[7];
cz q[5],q[1];
cu1(4.5275395) q[9],q[6];
swap q[4],q[8];
y q[2];
cy q[1],q[9];
u2(0.97162673,3.5376236) q[5];
u1(3.541203) q[8];
u2(4.7478194,0.45174955) q[2];
z q[6];
cz q[0],q[4];
u1(0.4980466) q[3];
id q[7];
ccx q[6],q[9],q[5];
swap q[2],q[7];
ccx q[4],q[3],q[1];
cz q[8],q[0];
u3(2.191617,2.9413781,4.5548436) q[7];
ccx q[0],q[6],q[2];
swap q[1],q[5];
cu1(4.5505729) q[3],q[4];
cz q[8],q[9];
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
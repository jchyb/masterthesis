OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[9],q[5],q[3];
swap q[1],q[2];
cu1(1.3564246) q[0],q[7];
id q[8];
rx(5.8719412) q[4];
u2(5.6195923,0.044505715) q[6];
rzz(0.98855885) q[7],q[3];
cswap q[2],q[8],q[9];
ccx q[0],q[4],q[1];
rz(3.8937863) q[5];
x q[6];
cswap q[7],q[9],q[0];
id q[2];
z q[1];
ry(3.2802375) q[4];
crz(4.014735) q[6],q[8];
rx(0.82838259) q[5];
rz(2.6850284) q[3];
z q[7];
s q[8];
ccx q[0],q[1],q[9];
ry(3.3869435) q[5];
u3(3.4370482,3.732279,3.6378119) q[3];
id q[4];
ry(4.9401561) q[2];
u2(4.381224,5.7324452) q[6];
h q[1];
cswap q[4],q[3],q[2];
crz(5.690249) q[5],q[8];
x q[7];
ch q[0],q[9];
rx(3.7078909) q[6];
z q[2];
crz(5.8945759) q[6],q[4];
id q[5];
ccx q[1],q[7],q[8];
ccx q[0],q[3],q[9];
ry(4.000464) q[4];
rzz(3.9136248) q[1],q[6];
u2(5.2816992,3.8509679) q[5];
crz(2.0991872) q[7],q[3];
t q[8];
u2(3.3761249,1.6033093) q[9];
u2(1.5230798,3.4736454) q[0];
rz(4.7098015) q[2];
ccx q[8],q[5],q[0];
ccx q[3],q[6],q[9];
ccx q[1],q[7],q[2];
u1(0.70626477) q[4];
swap q[4],q[6];
id q[2];
cz q[0],q[5];
rx(2.3679685) q[8];
cy q[9],q[1];
z q[3];
x q[7];
y q[0];
u2(0.099504921,0.030459189) q[3];
y q[5];
ccx q[8],q[7],q[4];
t q[9];
ch q[2],q[1];
z q[6];
id q[6];
crz(6.1668038) q[5],q[9];
ccx q[3],q[7],q[4];
cy q[0],q[8];
ch q[2],q[1];
ccx q[9],q[7],q[2];
cz q[5],q[6];
id q[1];
rx(5.5002254) q[3];
cz q[0],q[4];
id q[8];
cswap q[3],q[0],q[8];
ccx q[5],q[6],q[1];
ccx q[9],q[2],q[4];
tdg q[7];
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
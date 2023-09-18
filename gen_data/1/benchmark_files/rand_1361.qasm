OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rx(5.9494737) q[2];
cx q[7],q[6];
cu1(1.9154502) q[5],q[1];
rz(2.5069362) q[9];
t q[0];
u1(1.4269302) q[4];
cy q[3],q[8];
rzz(0.66962052) q[8],q[3];
cswap q[5],q[4],q[0];
swap q[7],q[2];
h q[1];
cu3(5.6895001,3.7107383,2.7207642) q[6],q[9];
rx(4.1560918) q[5];
ccx q[0],q[8],q[6];
ccx q[2],q[7],q[3];
ccx q[1],q[4],q[9];
id q[7];
ch q[2],q[0];
tdg q[6];
ccx q[1],q[4],q[8];
cswap q[3],q[5],q[9];
cu1(2.7210578) q[3],q[4];
rz(3.8981433) q[6];
h q[0];
cu3(3.0596222,3.635316,5.4573127) q[1],q[8];
sdg q[7];
ccx q[9],q[5],q[2];
u3(2.1645123,1.4624665,2.2803111) q[6];
cswap q[7],q[1],q[3];
u2(1.7268088,1.8574746) q[0];
ccx q[5],q[4],q[8];
cu3(0.053230356,1.0027438,4.6532528) q[2],q[9];
u2(3.4817088,3.8316373) q[7];
sdg q[1];
rzz(1.5309843) q[8],q[5];
swap q[2],q[0];
cy q[3],q[4];
rx(0.3641423) q[6];
sdg q[9];
tdg q[3];
ccx q[2],q[5],q[6];
y q[0];
ccx q[9],q[1],q[7];
s q[8];
rz(1.7612752) q[4];
ch q[8],q[7];
ccx q[4],q[6],q[3];
ccx q[9],q[2],q[5];
rzz(2.7064682) q[0],q[1];
ch q[5],q[7];
cswap q[0],q[4],q[3];
cswap q[2],q[8],q[1];
h q[9];
rx(4.1316766) q[6];
u3(2.8660124,3.4274564,0.85198939) q[4];
ch q[8],q[5];
ry(1.2546172) q[3];
ccx q[9],q[1],q[7];
s q[0];
u3(5.6603798,4.1441775,4.3223033) q[2];
t q[6];
ccx q[4],q[0],q[5];
u2(1.7149072,2.0040071) q[6];
cu3(4.5542628,3.6645834,5.2841352) q[3],q[2];
cswap q[1],q[9],q[7];
z q[8];
cz q[5],q[9];
y q[3];
rzz(5.5980383) q[7],q[8];
ccx q[4],q[0],q[6];
sdg q[2];
rx(3.6220284) q[1];
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
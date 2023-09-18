OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
swap q[8],q[5];
x q[6];
ry(1.0614289) q[9];
crz(2.6968792) q[7],q[4];
ch q[0],q[2];
rx(5.256351) q[1];
rx(3.0896199) q[3];
rz(0.57946523) q[9];
ch q[5],q[1];
cx q[8],q[0];
cy q[4],q[2];
cswap q[7],q[3],q[6];
crz(3.3879538) q[9],q[2];
cz q[1],q[7];
cu1(4.8667927) q[5],q[4];
rz(2.2428458) q[8];
u1(3.1895681) q[3];
cz q[0],q[6];
cu3(1.0822483,5.6581217,1.152111) q[8],q[6];
ccx q[2],q[4],q[1];
u3(2.2376651,5.6447448,3.4612602) q[7];
ccx q[9],q[5],q[3];
u2(4.1803292,4.0606812) q[0];
rx(5.1249559) q[6];
cu3(5.4849023,1.0083601,1.9261706) q[4],q[0];
id q[3];
cz q[9],q[5];
ccx q[1],q[7],q[2];
rx(5.8864668) q[8];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
crz(4.6940129) q[7],q[3];
cu3(2.711408,1.1099454,3.0568397) q[1],q[8];
cx q[2],q[6];
cz q[5],q[4];
ch q[0],q[9];
swap q[7],q[4];
s q[2];
crz(1.8211562) q[0],q[8];
cu1(0.58495732) q[5],q[3];
u3(1.8465742,3.4461766,5.9209156) q[9];
cu1(5.6523569) q[6],q[1];
sdg q[1];
u3(3.2798743,0.64821529,1.9443141) q[9];
cy q[7],q[0];
ry(2.8803913) q[5];
ccx q[4],q[8],q[6];
rzz(5.8906013) q[2],q[3];
cu3(4.7195931,3.2581009,1.3096554) q[2],q[3];
swap q[7],q[0];
rzz(3.3917364) q[8],q[9];
cz q[4],q[5];
y q[1];
u3(5.1728579,1.4181722,3.0517998) q[6];
cswap q[3],q[5],q[6];
cswap q[4],q[1],q[0];
cswap q[7],q[9],q[2];
rx(0.31526319) q[8];
ccx q[1],q[2],q[8];
cy q[0],q[6];
ch q[9],q[3];
cx q[4],q[5];
u1(4.3622264) q[7];
y q[6];
ccx q[1],q[7],q[2];
cx q[4],q[3];
ccx q[9],q[0],q[5];
ry(0.58631531) q[8];
s q[2];
crz(0.4229381) q[1],q[0];
cswap q[6],q[4],q[5];
t q[9];
ccx q[3],q[7],q[8];
cswap q[0],q[4],q[7];
ccx q[3],q[8],q[6];
ccx q[1],q[5],q[9];
u3(2.6689958,4.4915038,1.1524026) q[2];
cu1(5.8511532) q[0],q[9];
cswap q[1],q[3],q[2];
cz q[5],q[7];
cswap q[4],q[6],q[8];
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
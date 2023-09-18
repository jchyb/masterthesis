OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cx q[2],q[0];
crz(5.3100012) q[9],q[3];
cz q[4],q[7];
cz q[5],q[1];
y q[6];
rx(2.7857489) q[8];
ch q[3],q[5];
swap q[8],q[6];
t q[1];
cswap q[2],q[9],q[7];
crz(0.55903605) q[4],q[0];
ch q[5],q[3];
cu3(3.9384427,0.99775067,1.197099) q[0],q[6];
u2(0.53137167,0.55614694) q[2];
id q[7];
t q[9];
ch q[1],q[4];
t q[8];
ccx q[7],q[0],q[3];
cz q[5],q[1];
t q[6];
t q[4];
cu3(3.9917402,5.7742715,0.58146929) q[2],q[9];
rx(4.3246455) q[8];
cswap q[0],q[8],q[4];
cx q[1],q[7];
cswap q[5],q[2],q[3];
id q[9];
ry(5.7627903) q[6];
cu1(4.3965355) q[7],q[1];
crz(0.3748288) q[9],q[8];
cswap q[6],q[3],q[2];
cu1(2.7433846) q[4],q[5];
s q[0];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[8],q[2],q[7];
cswap q[4],q[6],q[5];
ccx q[3],q[0],q[1];
rz(1.3538298) q[9];
id q[0];
cswap q[3],q[7],q[5];
cx q[9],q[2];
cswap q[1],q[6],q[8];
y q[4];
sdg q[3];
h q[1];
cswap q[6],q[9],q[8];
u3(1.2065933,5.3364883,4.4803919) q[4];
ccx q[7],q[2],q[5];
y q[0];
cu3(0.91063455,0.34314665,3.3374399) q[1],q[6];
ry(4.8693536) q[3];
rx(2.4861707) q[8];
u3(2.0367364,0.49652907,5.9900851) q[2];
ccx q[4],q[7],q[0];
cy q[9],q[5];
x q[6];
s q[9];
tdg q[2];
s q[7];
s q[4];
cy q[8],q[5];
cswap q[1],q[3],q[0];
ccx q[3],q[4],q[9];
cz q[8],q[7];
z q[1];
cu3(5.6386881,6.0711516,6.0587374) q[2],q[5];
cu3(1.5390237,5.6958373,4.3030693) q[0],q[6];
ccx q[6],q[5],q[8];
crz(3.9900942) q[0],q[2];
cswap q[9],q[4],q[1];
id q[7];
s q[3];
cx q[6],q[2];
cz q[7],q[1];
u1(5.7546508) q[3];
s q[9];
cu1(0.25020402) q[4],q[5];
cy q[0],q[8];
sdg q[6];
ccx q[5],q[1],q[8];
s q[0];
y q[3];
h q[9];
swap q[4],q[2];
rx(3.3805853) q[7];
ccx q[5],q[4],q[7];
s q[1];
ccx q[2],q[6],q[3];
cswap q[9],q[8],q[0];
sdg q[1];
cu1(1.0982949) q[9],q[7];
ccx q[4],q[8],q[0];
y q[3];
u3(5.2590239,4.9453506,2.8306377) q[2];
h q[5];
sdg q[6];
ry(5.0521289) q[6];
swap q[7],q[8];
h q[4];
t q[2];
swap q[3],q[0];
cx q[1],q[5];
z q[9];
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
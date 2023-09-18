OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ch q[8],q[3];
swap q[6],q[4];
s q[0];
cu3(1.1997924,2.003777,1.9697406) q[7],q[1];
t q[2];
u3(4.0024553,3.6037501,2.3954705) q[5];
y q[9];
ccx q[6],q[1],q[3];
z q[4];
ccx q[2],q[0],q[7];
cu3(2.0492001,0.10426014,2.9736839) q[5],q[9];
s q[8];
ch q[4],q[9];
rzz(0.033274543) q[5],q[7];
cswap q[3],q[6],q[8];
ccx q[0],q[2],q[1];
swap q[2],q[1];
cswap q[4],q[5],q[0];
ccx q[8],q[7],q[6];
rzz(2.9572582) q[9],q[3];
sdg q[3];
x q[0];
cz q[7],q[9];
u1(1.2547083) q[1];
sdg q[4];
u3(3.713395,4.2175313,2.6097322) q[6];
cswap q[2],q[5],q[8];
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
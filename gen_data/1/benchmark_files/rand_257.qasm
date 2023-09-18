OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
z q[1];
u1(5.4475818) q[2];
ccx q[9],q[0],q[6];
t q[8];
ccx q[4],q[3],q[7];
ry(0.0075393774) q[5];
cu3(4.9720863,4.0786508,0.033944795) q[8],q[4];
rzz(4.3225097) q[6],q[3];
swap q[7],q[5];
rx(1.5540598) q[0];
cswap q[2],q[9],q[1];
cswap q[9],q[7],q[6];
cy q[2],q[8];
crz(1.3417286) q[0],q[5];
sdg q[3];
z q[4];
ry(5.573524) q[1];
x q[4];
cswap q[6],q[9],q[3];
sdg q[5];
cu1(3.5812059) q[0],q[2];
sdg q[8];
cu3(4.8599601,4.4392619,2.8160281) q[7],q[1];
t q[6];
ccx q[4],q[8],q[0];
ch q[3],q[1];
ccx q[2],q[7],q[5];
s q[9];
cswap q[5],q[3],q[2];
ccx q[6],q[0],q[7];
h q[4];
cy q[8],q[9];
y q[1];
ry(5.0904045) q[8];
rx(1.9837191) q[2];
ccx q[6],q[9],q[3];
ccx q[4],q[1],q[0];
u2(5.6415848,5.2449969) q[5];
h q[7];
h q[8];
cswap q[4],q[0],q[7];
swap q[2],q[6];
cswap q[3],q[1],q[9];
h q[5];
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
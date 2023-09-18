OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
id q[6];
u1(5.6867934) q[7];
ch q[9],q[0];
ccx q[2],q[8],q[3];
ccx q[1],q[4],q[5];
cz q[0],q[2];
id q[1];
cu3(0.82226865,1.8980548,3.4850958) q[6],q[8];
cu3(5.2997384,3.2156193,3.4870311) q[5],q[4];
ccx q[7],q[3],q[9];
ccx q[7],q[0],q[5];
cx q[1],q[3];
cswap q[4],q[6],q[8];
crz(0.52304076) q[9],q[2];
h q[9];
ccx q[2],q[4],q[0];
cswap q[8],q[3],q[1];
ccx q[5],q[6],q[7];
cu3(3.8861765,6.2021823,4.0374675) q[7],q[1];
ch q[8],q[2];
ccx q[0],q[9],q[6];
swap q[5],q[3];
u3(3.7964372,4.2498095,5.7836256) q[4];
ccx q[9],q[4],q[3];
ch q[7],q[8];
h q[1];
y q[2];
cu3(4.4867809,3.0887367,1.6863046) q[5],q[0];
tdg q[6];
s q[2];
t q[7];
cx q[5],q[0];
cu3(4.2594916,2.4010789,4.2338499) q[4],q[3];
cz q[8],q[1];
cy q[6],q[9];
cu1(3.1248447) q[2],q[7];
cswap q[6],q[4],q[0];
cu3(1.4918091,5.364294,6.0381979) q[8],q[5];
rx(0.29003727) q[3];
tdg q[9];
rx(0.39641563) q[1];
cy q[8],q[1];
u2(5.9841278,5.5210184) q[5];
crz(5.8038092) q[3],q[6];
cz q[0],q[7];
ccx q[2],q[9],q[4];
ccx q[3],q[6],q[4];
cswap q[8],q[7],q[2];
u3(3.3072813,4.7187401,0.34365713) q[9];
ry(4.069533) q[1];
z q[5];
u1(3.3309443) q[0];
cswap q[7],q[1],q[6];
rz(3.9874158) q[5];
cu3(4.1741071,3.4094271,1.1665104) q[9],q[4];
h q[0];
ch q[3],q[2];
u2(5.0832457,0.27449582) q[8];
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
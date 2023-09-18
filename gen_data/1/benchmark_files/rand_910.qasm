OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rx(3.5995466) q[4];
cy q[8],q[1];
ch q[0],q[3];
ccx q[5],q[2],q[9];
ch q[6],q[7];
ccx q[6],q[4],q[0];
cx q[8],q[1];
rzz(2.5811233) q[3],q[9];
cx q[2],q[5];
y q[7];
rzz(1.631806) q[4],q[6];
z q[9];
ccx q[8],q[1],q[5];
sdg q[0];
cz q[2],q[3];
t q[7];
ccx q[5],q[1],q[4];
sdg q[0];
u3(1.1944328,5.5459291,4.0302558) q[2];
ccx q[7],q[8],q[6];
cy q[9],q[3];
cswap q[6],q[7],q[8];
swap q[9],q[3];
y q[4];
cu3(1.3020272,2.7996895,3.5842277) q[2],q[0];
y q[1];
u3(4.2300939,1.4036869,4.3410502) q[5];
cswap q[0],q[2],q[3];
ry(1.6079332) q[7];
tdg q[8];
tdg q[4];
cy q[1],q[6];
crz(2.2662029) q[9],q[5];
ch q[9],q[4];
y q[8];
rx(1.6216918) q[3];
cy q[7],q[5];
swap q[6],q[0];
rzz(2.294215) q[1],q[2];
cswap q[1],q[5],q[4];
cx q[0],q[6];
crz(5.2878159) q[8],q[3];
y q[7];
cz q[9],q[2];
cswap q[7],q[0],q[9];
crz(3.2938457) q[6],q[4];
cz q[3],q[8];
rx(2.2710741) q[1];
cu3(5.6802071,1.8592534,5.6189546) q[2],q[5];
h q[5];
ch q[0],q[1];
u2(4.9568418,1.4624893) q[6];
ccx q[7],q[2],q[9];
cu3(4.928466,0.55356567,1.9542264) q[3],q[4];
z q[8];
t q[8];
cx q[6],q[5];
sdg q[4];
swap q[7],q[2];
h q[3];
ccx q[9],q[0],q[1];
cu1(5.9509271) q[8],q[6];
rx(5.9192409) q[9];
z q[4];
ccx q[2],q[1],q[5];
ccx q[0],q[3],q[7];
u1(2.2075298) q[5];
ccx q[8],q[1],q[9];
cswap q[2],q[3],q[0];
ccx q[6],q[7],q[4];
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
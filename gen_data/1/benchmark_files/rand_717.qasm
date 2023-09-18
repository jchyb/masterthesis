OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cy q[5],q[6];
ccx q[4],q[1],q[8];
u3(5.3421103,3.8767084,2.0177475) q[0];
cu3(2.0761256,5.9582902,0.680105) q[9],q[7];
ch q[3],q[2];
cz q[3],q[5];
ccx q[0],q[2],q[7];
cu3(3.3936716,0.40878612,4.7434659) q[4],q[9];
cz q[8],q[6];
y q[1];
tdg q[0];
ccx q[8],q[6],q[1];
cswap q[4],q[5],q[2];
ccx q[9],q[7],q[3];
rzz(2.4385096) q[3],q[2];
cswap q[5],q[8],q[4];
cy q[0],q[7];
ccx q[6],q[9],q[1];
x q[9];
ccx q[3],q[0],q[1];
ch q[5],q[6];
s q[7];
rz(5.9774565) q[4];
tdg q[8];
x q[2];
rx(1.2496114) q[0];
cswap q[4],q[2],q[5];
ccx q[3],q[7],q[9];
cz q[8],q[1];
s q[6];
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
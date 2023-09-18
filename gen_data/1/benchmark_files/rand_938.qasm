OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ch q[6],q[3];
ccx q[5],q[2],q[9];
ccx q[1],q[8],q[4];
cy q[0],q[7];
cswap q[3],q[1],q[8];
u2(5.8241682,2.2265403) q[6];
t q[5];
cu1(0.2811284) q[4],q[7];
cu1(3.9943498) q[0],q[2];
s q[9];
rzz(6.2789849) q[4],q[7];
tdg q[0];
cswap q[1],q[2],q[3];
cswap q[9],q[8],q[6];
h q[5];
ccx q[7],q[9],q[1];
tdg q[6];
u2(5.7514655,0.67522387) q[0];
ccx q[8],q[2],q[5];
tdg q[4];
t q[3];
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
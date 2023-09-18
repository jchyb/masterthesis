OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[8],q[9],q[0];
h q[5];
cu1(5.0376989) q[3],q[6];
t q[4];
cy q[7],q[2];
z q[1];
cu1(5.7540578) q[4],q[2];
crz(2.0594148) q[3],q[5];
cz q[8],q[1];
cu3(2.5916444,0.18992323,5.2849988) q[6],q[7];
sdg q[0];
u1(6.0846573) q[9];
x q[4];
crz(3.4231413) q[3],q[6];
cswap q[0],q[7],q[1];
y q[5];
ry(1.6444838) q[2];
u1(1.4732748) q[9];
ry(4.9877892) q[8];
ccx q[7],q[4],q[0];
u1(1.0507038) q[2];
ccx q[5],q[1],q[6];
id q[3];
cu1(1.1428131) q[9],q[8];
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
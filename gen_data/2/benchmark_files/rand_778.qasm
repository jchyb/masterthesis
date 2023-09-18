OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ch q[9],q[3];
cswap q[7],q[2],q[1];
h q[6];
tdg q[8];
crz(4.4717286) q[5],q[0];
u2(5.0943877,0.1873534) q[4];
cswap q[3],q[5],q[1];
cswap q[4],q[6],q[2];
cu1(5.2210133) q[8],q[7];
t q[0];
t q[9];
cu3(4.4578872,6.1262926,0.77621703) q[0],q[2];
y q[7];
rz(5.7022171) q[9];
h q[8];
swap q[1],q[5];
ccx q[6],q[3],q[4];
t q[0];
x q[2];
h q[1];
crz(1.0053648) q[5],q[6];
s q[3];
swap q[8],q[4];
sdg q[7];
t q[9];
swap q[7],q[8];
id q[5];
y q[6];
rz(5.9413957) q[2];
cswap q[9],q[4],q[3];
cz q[0],q[1];
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
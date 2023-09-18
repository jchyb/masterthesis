OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
crz(2.636989) q[2],q[3];
y q[8];
ccx q[4],q[5],q[9];
rx(2.7147626) q[1];
cswap q[6],q[0],q[7];
t q[6];
swap q[5],q[3];
ccx q[4],q[1],q[8];
cz q[7],q[2];
cx q[9],q[0];
cswap q[9],q[6],q[8];
rz(6.2408367) q[0];
cu3(4.7157746,1.6103632,0.83011473) q[3],q[7];
s q[4];
ccx q[1],q[2],q[5];
x q[1];
cx q[6],q[7];
ccx q[3],q[4],q[8];
u2(4.9461864,2.7754215) q[9];
u1(0.89293741) q[5];
sdg q[2];
rz(4.7948573) q[0];
cswap q[2],q[3],q[5];
y q[4];
cswap q[8],q[7],q[6];
tdg q[0];
ry(2.2011377) q[1];
id q[9];
cy q[3],q[6];
ccx q[8],q[0],q[5];
cy q[4],q[9];
rx(2.2343073) q[2];
cu3(3.2082718,4.4927494,3.2577986) q[1],q[7];
cswap q[4],q[5],q[1];
y q[3];
t q[0];
ccx q[7],q[9],q[8];
h q[2];
h q[6];
t q[6];
cy q[2],q[1];
ccx q[0],q[5],q[4];
u1(4.688627) q[7];
s q[8];
cu1(2.8240104) q[3],q[9];
ccx q[9],q[8],q[5];
swap q[7],q[1];
cu1(1.6943634) q[3],q[0];
cu1(4.8839186) q[4],q[6];
u3(2.0461648,1.7808783,3.1212292) q[2];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cz q[9],q[0];
ccx q[8],q[4],q[5];
tdg q[7];
cu3(0.64500168,1.4422544,5.2915866) q[6],q[2];
cu1(0.24051815) q[3],q[1];
cswap q[3],q[9],q[6];
ccx q[5],q[0],q[2];
s q[8];
h q[1];
ch q[7],q[4];
cx q[7],q[2];
rzz(1.2903633) q[8],q[1];
ccx q[5],q[6],q[3];
y q[4];
ch q[9],q[0];
id q[0];
rzz(3.695712) q[3],q[5];
cswap q[2],q[6],q[1];
ccx q[8],q[9],q[4];
z q[7];
cz q[9],q[5];
ch q[4],q[8];
crz(5.9161842) q[2],q[0];
ccx q[7],q[3],q[6];
y q[1];
ccx q[3],q[4],q[7];
u3(2.1629457,2.5129818,2.9180285) q[5];
rzz(4.5940817) q[8],q[9];
cswap q[1],q[2],q[6];
y q[0];
s q[8];
crz(0.15007671) q[0],q[6];
ch q[1],q[2];
t q[3];
swap q[5],q[4];
u3(3.8132535,1.5775855,5.9848732) q[7];
id q[9];
cu1(2.2043153) q[2],q[1];
ry(5.910198) q[4];
cswap q[9],q[8],q[0];
ry(4.5041746) q[5];
ccx q[7],q[3],q[6];
h q[6];
cswap q[1],q[7],q[8];
z q[2];
u3(5.6174471,2.5627728,5.9829615) q[4];
crz(3.6522384) q[0],q[5];
id q[3];
u3(1.1188281,6.0174926,4.0183941) q[9];
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
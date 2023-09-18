OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
u3(3.4237134,1.2538009,2.3610103) q[2];
ch q[5],q[4];
cz q[3],q[9];
z q[0];
y q[8];
ch q[6],q[7];
t q[1];
ccx q[3],q[0],q[5];
rzz(1.539038) q[2],q[4];
cy q[6],q[8];
cz q[1],q[7];
z q[9];
swap q[9],q[5];
cswap q[3],q[1],q[7];
rz(3.3140942) q[0];
sdg q[6];
cswap q[8],q[2],q[4];
rx(3.9370352) q[5];
rzz(0.39983048) q[3],q[7];
s q[6];
s q[8];
crz(1.8600854) q[2],q[1];
ry(3.0565173) q[4];
crz(1.5926694) q[0],q[9];
ry(5.9319114) q[0];
cu3(5.9746406,4.9890387,5.7915562) q[1],q[9];
cswap q[2],q[3],q[7];
h q[5];
ccx q[8],q[6],q[4];
swap q[1],q[7];
y q[8];
ccx q[9],q[0],q[2];
sdg q[3];
ry(0.61420006) q[4];
u1(2.1266828) q[6];
ry(5.9579349) q[5];
ccx q[7],q[1],q[8];
rx(2.9011326) q[6];
sdg q[0];
cswap q[3],q[4],q[5];
rz(0.9896363) q[9];
rx(5.0820419) q[2];
swap q[4],q[2];
ccx q[7],q[1],q[8];
cu3(2.1637008,3.9410265,2.4759192) q[9],q[3];
cswap q[6],q[0],q[5];
cu3(1.7675636,1.8760403,2.8458826) q[8],q[7];
rz(2.8547097) q[9];
s q[0];
sdg q[1];
cu1(0.47892338) q[3],q[5];
rzz(4.6595136) q[4],q[6];
z q[2];
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
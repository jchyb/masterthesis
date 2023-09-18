OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[2],q[7],q[6];
ccx q[1],q[5],q[3];
ccx q[8],q[9],q[0];
t q[4];
u1(3.4723586) q[5];
t q[0];
cz q[9],q[3];
cswap q[1],q[2],q[6];
rx(1.7490243) q[7];
u1(1.8647938) q[4];
x q[8];
swap q[9],q[8];
ccx q[3],q[6],q[0];
crz(2.1229698) q[5],q[2];
ccx q[1],q[7],q[4];
cx q[1],q[8];
cz q[6],q[5];
tdg q[7];
z q[0];
cswap q[4],q[2],q[9];
rx(2.6946239) q[3];
rzz(0.86845869) q[9],q[6];
cswap q[1],q[7],q[3];
crz(3.8296832) q[2],q[4];
crz(2.6333049) q[8],q[0];
s q[5];
t q[3];
x q[9];
rzz(1.0244168) q[2],q[1];
ccx q[4],q[8],q[7];
ccx q[6],q[0],q[5];
u1(0.69569204) q[2];
u3(4.0122201,0.11652495,5.5039455) q[7];
id q[5];
tdg q[0];
rzz(5.7185348) q[3],q[4];
swap q[1],q[8];
x q[9];
rz(0.88469945) q[6];
cz q[2],q[3];
rx(5.7754434) q[6];
crz(2.0375798) q[4],q[8];
crz(3.3773272) q[5],q[7];
t q[1];
cx q[0],q[9];
cx q[5],q[6];
cz q[1],q[8];
cz q[9],q[7];
u2(5.9507513,4.971074) q[3];
h q[0];
cu1(5.3121555) q[2],q[4];
ccx q[7],q[8],q[0];
cu3(2.1242886,3.1697711,6.0399273) q[4],q[6];
cx q[1],q[2];
u1(0.7593906) q[5];
cu3(0.31964031,0.53987962,5.7593231) q[3],q[9];
tdg q[7];
cswap q[3],q[6],q[1];
rx(3.8787216) q[4];
cu1(5.5073415) q[0],q[2];
ccx q[5],q[9],q[8];
t q[4];
cswap q[0],q[9],q[7];
ch q[8],q[6];
id q[5];
ccx q[2],q[3],q[1];
z q[4];
ccx q[7],q[2],q[1];
x q[0];
cswap q[6],q[5],q[3];
rzz(4.6921385) q[9],q[8];
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
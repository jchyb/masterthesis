OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
h q[9];
cswap q[8],q[2],q[7];
z q[6];
swap q[1],q[4];
z q[0];
ry(3.0218198) q[5];
sdg q[3];
ccx q[6],q[5],q[1];
crz(5.7363303) q[3],q[2];
rzz(5.5621033) q[8],q[9];
cswap q[4],q[0],q[7];
cz q[9],q[3];
cx q[8],q[5];
cswap q[2],q[6],q[7];
sdg q[1];
cu1(1.4930996) q[4],q[0];
swap q[0],q[2];
ch q[7],q[4];
cu3(3.32417,0.98660304,4.2433858) q[1],q[9];
cswap q[8],q[3],q[5];
rx(5.3417858) q[6];
cswap q[0],q[2],q[7];
cswap q[5],q[8],q[3];
swap q[1],q[6];
ch q[9],q[4];
ry(0.68939013) q[1];
ccx q[8],q[0],q[6];
cu1(2.6038233) q[5],q[9];
cswap q[4],q[7],q[3];
y q[2];
z q[0];
cu3(4.5648948,0.83773314,2.8453645) q[7],q[2];
h q[1];
cswap q[6],q[4],q[3];
x q[8];
s q[9];
ry(5.7842423) q[5];
cswap q[7],q[6],q[4];
rzz(4.6095299) q[0],q[9];
sdg q[1];
rzz(3.3570465) q[5],q[2];
crz(4.4794053) q[8],q[3];
t q[5];
u3(0.65712511,2.0068171,1.949294) q[3];
cz q[1],q[9];
ccx q[8],q[0],q[2];
x q[4];
cy q[6],q[7];
cswap q[8],q[3],q[4];
cswap q[7],q[6],q[2];
sdg q[0];
z q[9];
sdg q[5];
t q[1];
x q[1];
ch q[5],q[9];
ccx q[7],q[6],q[2];
s q[8];
ccx q[4],q[3],q[0];
cswap q[8],q[9],q[7];
ry(6.2593686) q[6];
u3(4.3499936,2.4497211,1.6108214) q[3];
ccx q[4],q[5],q[0];
s q[1];
rz(4.8738423) q[2];
u1(3.5991372) q[5];
cy q[4],q[2];
u1(3.0113926) q[6];
cx q[0],q[7];
cx q[8],q[3];
cy q[9],q[1];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cy q[2],q[6];
cy q[9],q[0];
y q[8];
cx q[1],q[5];
y q[4];
cz q[3],q[7];
cswap q[3],q[1],q[4];
cu3(5.7260552,6.0649325,2.7311037) q[5],q[0];
cu3(5.9473457,5.6159769,4.4292512) q[8],q[9];
u2(2.2034406,5.2678484) q[6];
sdg q[2];
u3(3.5928135,0.61020596,0.1095219) q[7];
tdg q[0];
rx(6.1699888) q[3];
rzz(5.6756108) q[9],q[1];
cswap q[8],q[4],q[5];
cz q[2],q[7];
rz(1.2889317) q[6];
u2(6.0768769,3.0222412) q[5];
cx q[2],q[8];
rzz(0.055200294) q[0],q[7];
z q[4];
cy q[6],q[9];
sdg q[3];
u1(5.0246638) q[1];
cswap q[4],q[1],q[7];
rx(1.9239811) q[6];
cy q[5],q[2];
cu3(5.3419277,0.91632432,2.2936745) q[3],q[8];
sdg q[9];
t q[0];
cswap q[7],q[2],q[6];
ry(0.55238434) q[3];
cy q[1],q[0];
ccx q[4],q[5],q[8];
x q[9];
t q[5];
cswap q[8],q[3],q[9];
ccx q[2],q[0],q[6];
u2(3.416601,0.31708516) q[7];
cy q[1],q[4];
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
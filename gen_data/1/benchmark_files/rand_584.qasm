OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[1],q[5],q[2];
ccx q[4],q[7],q[9];
x q[3];
ccx q[0],q[8],q[6];
tdg q[2];
rz(1.2595966) q[0];
cu1(5.1098384) q[4],q[9];
crz(0.77624995) q[3],q[8];
cu3(4.6297882,0.66722702,3.4336065) q[5],q[7];
cu1(6.003642) q[1],q[6];
sdg q[5];
ccx q[1],q[9],q[8];
ccx q[0],q[4],q[3];
cswap q[6],q[2],q[7];
s q[8];
cx q[9],q[6];
cx q[3],q[2];
cy q[4],q[1];
u3(3.3313263,5.9720784,1.8123264) q[7];
h q[0];
id q[5];
cz q[3],q[7];
rx(3.8176744) q[6];
ccx q[8],q[0],q[1];
cu3(5.2385588,3.9284189,2.8186658) q[4],q[5];
z q[2];
tdg q[9];
s q[4];
crz(3.9780205) q[6],q[2];
tdg q[3];
ccx q[8],q[1],q[9];
cswap q[5],q[7],q[0];
ccx q[9],q[5],q[6];
crz(0.91313588) q[0],q[7];
cu3(0.60832295,4.9633357,4.8845247) q[3],q[4];
u3(2.0850061,0.72688042,0.56735072) q[2];
cx q[1],q[8];
swap q[4],q[5];
u3(3.2550372,3.0244957,4.4174657) q[7];
ccx q[2],q[8],q[1];
cswap q[6],q[9],q[0];
u2(3.9131319,2.7819036) q[3];
x q[4];
ccx q[5],q[8],q[7];
cy q[0],q[6];
t q[2];
cz q[3],q[9];
tdg q[1];
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
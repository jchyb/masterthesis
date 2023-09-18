OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
s q[1];
cswap q[3],q[5],q[8];
cswap q[4],q[2],q[9];
cz q[7],q[0];
t q[6];
cswap q[0],q[9],q[5];
ccx q[4],q[7],q[3];
u2(4.2494957,5.4981078) q[1];
sdg q[8];
cy q[6],q[2];
cswap q[0],q[6],q[4];
rz(0.27101745) q[9];
tdg q[3];
cu3(6.278088,2.8863655,3.1648072) q[5],q[8];
cswap q[2],q[7],q[1];
id q[9];
z q[6];
h q[3];
cx q[2],q[8];
ccx q[0],q[5],q[4];
cu3(3.5433686,5.8649505,1.3899176) q[1],q[7];
cz q[8],q[2];
cz q[5],q[0];
rzz(3.4949056) q[1],q[4];
cy q[6],q[3];
t q[7];
u3(0.7706635,5.1182289,3.1329489) q[9];
h q[0];
ccx q[6],q[8],q[9];
ch q[2],q[4];
ccx q[5],q[7],q[1];
h q[3];
id q[0];
cu1(3.1277853) q[8],q[7];
cswap q[4],q[9],q[3];
crz(5.4675319) q[1],q[6];
crz(4.7648101) q[2],q[5];
s q[8];
sdg q[5];
s q[3];
s q[0];
cu3(3.0350164,3.1951235,4.6577568) q[1],q[7];
ccx q[4],q[9],q[2];
ry(2.4197497) q[6];
ccx q[3],q[4],q[0];
tdg q[9];
ch q[7],q[1];
cswap q[2],q[5],q[6];
u1(3.8330922) q[8];
u1(0.80468437) q[2];
ccx q[8],q[3],q[0];
u2(3.632878,2.9234314) q[6];
ccx q[1],q[7],q[5];
cx q[4],q[9];
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
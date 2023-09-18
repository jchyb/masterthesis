OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[7],q[8],q[0];
rz(2.3126405) q[3];
ccx q[9],q[5],q[1];
rz(2.2006821) q[4];
rz(0.87361517) q[6];
y q[2];
rx(2.3779634) q[3];
cswap q[0],q[9],q[1];
ccx q[6],q[8],q[2];
ccx q[4],q[7],q[5];
crz(2.8421177) q[9],q[4];
ccx q[6],q[5],q[8];
cswap q[2],q[0],q[1];
crz(3.7288286) q[7],q[3];
id q[3];
cswap q[5],q[2],q[7];
ch q[6],q[9];
id q[0];
ccx q[8],q[1],q[4];
cy q[4],q[3];
ccx q[9],q[1],q[5];
u1(2.3122928) q[0];
ry(1.3755213) q[8];
id q[7];
s q[2];
h q[6];
sdg q[8];
crz(3.983007) q[9],q[1];
cz q[4],q[3];
ry(3.9785395) q[6];
u3(6.1187437,2.0236292,1.6194734) q[0];
sdg q[5];
u3(4.8912954,5.6470459,1.7268266) q[2];
tdg q[7];
cswap q[5],q[9],q[6];
z q[7];
u1(3.0593588) q[0];
cy q[3],q[4];
cswap q[2],q[1],q[8];
id q[6];
id q[9];
h q[3];
sdg q[8];
cswap q[5],q[7],q[1];
cswap q[4],q[0],q[2];
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
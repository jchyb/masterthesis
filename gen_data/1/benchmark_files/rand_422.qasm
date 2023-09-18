OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cz q[0],q[1];
ccx q[6],q[7],q[8];
crz(4.7642168) q[3],q[2];
rz(1.6815033) q[4];
cz q[5],q[9];
h q[8];
u3(2.1746031,0.20276245,4.9608879) q[7];
u3(2.6475228,6.0529018,1.1834727) q[5];
ccx q[6],q[2],q[1];
rzz(0.44583108) q[4],q[0];
ch q[9],q[3];
cx q[0],q[9];
y q[5];
x q[3];
ch q[8],q[7];
rzz(2.1092993) q[6],q[2];
swap q[4],q[1];
t q[4];
t q[2];
cu1(3.8166826) q[5],q[8];
cswap q[0],q[7],q[1];
cx q[9],q[6];
u2(5.095541,5.5420591) q[3];
ccx q[0],q[5],q[3];
sdg q[1];
h q[4];
ccx q[9],q[7],q[2];
h q[8];
z q[6];
ch q[8],q[5];
crz(0.77744236) q[3],q[7];
cswap q[4],q[0],q[2];
rz(5.5056233) q[1];
u1(6.2467497) q[9];
rz(4.6766787) q[6];
cy q[0],q[5];
cy q[7],q[9];
x q[1];
ccx q[2],q[3],q[8];
y q[4];
y q[6];
ccx q[3],q[6],q[1];
x q[8];
cu3(1.5531546,4.4615341,4.9755665) q[9],q[0];
ccx q[5],q[4],q[2];
u3(5.0823042,3.8256232,2.2525866) q[7];
ry(5.0847335) q[7];
id q[9];
ch q[4],q[6];
crz(5.3068216) q[8],q[0];
cx q[3],q[1];
cz q[5],q[2];
ch q[2],q[3];
cswap q[4],q[9],q[6];
cswap q[5],q[7],q[8];
u3(4.6921269,0.13377618,4.4067725) q[0];
u1(5.5926551) q[1];
crz(5.7115543) q[2],q[6];
cswap q[9],q[3],q[8];
cswap q[5],q[7],q[4];
rzz(3.2327081) q[0],q[1];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
id q[3];
rzz(2.6500737) q[8],q[9];
ch q[1],q[6];
cu3(6.0435363,5.8609273,5.4147981) q[2],q[5];
ccx q[0],q[7],q[4];
swap q[9],q[6];
u2(5.0106974,0.5110696) q[5];
ccx q[3],q[2],q[0];
ccx q[4],q[7],q[1];
s q[8];
cswap q[2],q[6],q[3];
rz(3.5474625) q[5];
cswap q[4],q[1],q[0];
cswap q[8],q[9],q[7];
rx(4.507196) q[3];
ccx q[9],q[1],q[8];
crz(4.4137954) q[7],q[5];
cswap q[0],q[2],q[6];
x q[4];
h q[5];
y q[1];
crz(1.6671018) q[2],q[8];
tdg q[3];
cswap q[9],q[4],q[7];
h q[0];
s q[6];
cu1(4.8438419) q[2],q[3];
ccx q[4],q[1],q[7];
u1(1.1942709) q[9];
crz(4.7847721) q[0],q[5];
x q[8];
u3(5.888538,2.4904775,3.4744023) q[6];
crz(6.1833314) q[9],q[7];
y q[1];
rz(4.8816839) q[4];
cswap q[6],q[5],q[8];
rz(1.6954689) q[0];
x q[2];
id q[3];
cu1(0.64366288) q[6],q[1];
ccx q[9],q[4],q[2];
cy q[0],q[5];
ch q[3],q[7];
rx(6.062383) q[8];
ccx q[9],q[7],q[3];
id q[4];
rx(2.6327918) q[0];
u2(2.595454,5.1779509) q[2];
cz q[1],q[8];
h q[5];
rx(3.7388335) q[6];
rzz(0.29046393) q[1],q[7];
crz(3.3144691) q[8],q[2];
t q[4];
y q[6];
cu3(1.5962637,3.0673357,1.9881565) q[5],q[9];
cu3(0.18641666,1.5851771,0.74182943) q[0],q[3];
cu1(3.4417556) q[6],q[7];
ch q[5],q[0];
ccx q[3],q[9],q[8];
cu3(5.493424,1.9656231,1.1159309) q[2],q[4];
z q[1];
cswap q[8],q[2],q[4];
cswap q[5],q[7],q[9];
swap q[6],q[1];
id q[0];
rz(0.53341129) q[3];
cswap q[3],q[7],q[8];
cswap q[5],q[1],q[4];
cswap q[6],q[2],q[9];
x q[0];
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
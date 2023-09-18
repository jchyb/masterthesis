OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
tdg q[7];
ccx q[4],q[6],q[0];
crz(4.2988737) q[2],q[1];
ccx q[5],q[8],q[3];
id q[9];
sdg q[1];
t q[7];
u3(5.5854182,5.8516275,3.854843) q[5];
cswap q[3],q[0],q[4];
cy q[8],q[2];
u2(0.43239193,2.8479266) q[9];
y q[6];
t q[0];
cx q[5],q[2];
ccx q[1],q[6],q[9];
z q[4];
ccx q[7],q[8],q[3];
ccx q[5],q[9],q[8];
ccx q[0],q[4],q[7];
u3(3.2208279,3.8314184,5.4809842) q[3];
y q[6];
z q[1];
z q[2];
ccx q[5],q[8],q[9];
u3(2.7082802,0.82883724,0.99977984) q[1];
u1(2.2885797) q[6];
u3(0.39738394,1.5208022,4.694725) q[4];
u3(6.0368991,0.011635228,2.2302085) q[7];
swap q[2],q[3];
ry(1.490156) q[0];
cswap q[6],q[4],q[0];
cz q[8],q[1];
ch q[5],q[3];
rx(3.3688157) q[7];
cy q[9],q[2];
rz(5.558104) q[4];
crz(1.8287179) q[5],q[8];
t q[3];
ccx q[9],q[0],q[6];
cz q[7],q[2];
u2(5.7292573,3.077443) q[1];
rz(2.7166643) q[9];
cx q[0],q[2];
cswap q[4],q[3],q[6];
ccx q[7],q[8],q[1];
tdg q[5];
rzz(2.0400933) q[9],q[1];
tdg q[6];
ccx q[3],q[4],q[5];
swap q[8],q[2];
swap q[0],q[7];
cswap q[9],q[5],q[7];
tdg q[3];
cu1(4.72275) q[0],q[2];
rx(2.9750075) q[6];
swap q[4],q[1];
id q[8];
u3(6.2402103,2.6150336,3.5081667) q[9];
cswap q[5],q[7],q[0];
cz q[8],q[3];
rx(3.8937052) q[6];
u1(4.0934847) q[4];
rzz(5.3952098) q[2],q[1];
t q[2];
cswap q[9],q[1],q[4];
swap q[6],q[5];
ccx q[0],q[7],q[8];
rx(2.6606684) q[3];
crz(4.0136203) q[0],q[7];
ccx q[8],q[3],q[2];
cswap q[9],q[5],q[4];
cy q[6],q[1];
cswap q[9],q[8],q[7];
cu1(3.9168285) q[4],q[2];
cz q[3],q[6];
cswap q[1],q[0],q[5];
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
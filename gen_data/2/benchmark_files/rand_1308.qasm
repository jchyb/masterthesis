OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
u3(3.2491816,5.2539059,5.4339971) q[9];
x q[4];
y q[1];
ccx q[5],q[8],q[6];
cu1(4.668964) q[7],q[0];
u3(5.1257105,1.649821,0.070387301) q[3];
sdg q[2];
cu1(0.029747608) q[2],q[0];
rzz(1.5566644) q[1],q[7];
id q[4];
cu1(4.7217759) q[5],q[9];
cswap q[6],q[3],q[8];
ch q[8],q[9];
x q[5];
cu3(3.3004536,2.7262936,3.2735339) q[0],q[2];
y q[6];
x q[4];
cswap q[7],q[1],q[3];
ccx q[0],q[6],q[7];
ch q[5],q[1];
ry(1.9441544) q[9];
ccx q[3],q[2],q[8];
u2(3.1392506,0.87869151) q[4];
ccx q[8],q[3],q[9];
ccx q[2],q[5],q[4];
ccx q[6],q[7],q[0];
y q[1];
id q[2];
rz(3.5011001) q[4];
rzz(5.9947404) q[6],q[8];
cu3(2.982117,5.4962135,4.9450628) q[5],q[9];
cswap q[0],q[3],q[1];
u2(3.9846153,5.9115213) q[7];
ch q[3],q[9];
t q[0];
ccx q[6],q[5],q[4];
ccx q[7],q[8],q[1];
rz(2.9697092) q[2];
u3(1.9618002,4.1125554,3.8400013) q[1];
u2(2.267994,5.8905541) q[7];
y q[4];
id q[2];
cswap q[3],q[6],q[5];
ccx q[8],q[0],q[9];
sdg q[2];
cswap q[5],q[3],q[8];
cz q[0],q[4];
u1(1.0203467) q[6];
ccx q[7],q[9],q[1];
sdg q[9];
cy q[1],q[7];
ccx q[6],q[5],q[3];
ccx q[0],q[2],q[4];
rx(3.1147737) q[8];
cswap q[5],q[2],q[4];
cu3(6.0252151,3.098684,6.0112764) q[9],q[7];
cswap q[0],q[3],q[6];
sdg q[1];
sdg q[8];
cswap q[8],q[6],q[4];
cx q[0],q[3];
ccx q[9],q[2],q[7];
cz q[1],q[5];
sdg q[8];
cz q[7],q[9];
ccx q[6],q[2],q[4];
u1(0.85230938) q[0];
x q[3];
u3(1.8277834,4.3574643,5.6452815) q[5];
t q[1];
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
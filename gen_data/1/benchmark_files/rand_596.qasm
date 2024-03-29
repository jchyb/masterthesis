OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[6],q[2],q[0];
ccx q[8],q[9],q[5];
ry(3.3902641) q[4];
cswap q[1],q[7],q[3];
cswap q[5],q[8],q[4];
u1(0.41363264) q[9];
ccx q[6],q[3],q[0];
ch q[2],q[7];
rx(3.398451) q[1];
z q[5];
cz q[0],q[7];
cswap q[4],q[1],q[9];
h q[8];
tdg q[2];
sdg q[6];
rz(4.2844766) q[3];
id q[0];
ccx q[3],q[8],q[1];
cy q[7],q[2];
cz q[5],q[4];
ry(0.72799513) q[6];
x q[9];
crz(1.4126191) q[4],q[1];
rx(0.79143359) q[5];
cswap q[7],q[2],q[8];
swap q[3],q[0];
u2(4.5528625,5.0125017) q[6];
t q[9];
ccx q[6],q[2],q[1];
crz(2.6953943) q[8],q[0];
cu3(4.8701327,5.7805933,5.4462046) q[5],q[9];
cu1(1.2945325) q[4],q[7];
rx(3.5450663) q[3];
cy q[6],q[2];
cswap q[7],q[5],q[1];
u2(4.5663244,4.7456122) q[9];
u1(3.0880892) q[4];
ch q[3],q[8];
u2(0.56048428,5.7421166) q[0];
sdg q[7];
u2(5.8955604,3.4515087) q[5];
ch q[9],q[3];
rzz(3.7315337) q[1],q[4];
cu1(4.0604065) q[6],q[2];
rx(0.52749007) q[8];
tdg q[0];
y q[4];
cswap q[3],q[2],q[5];
rzz(5.6331444) q[0],q[6];
ccx q[7],q[8],q[1];
rx(0.17911333) q[9];
rz(4.259212) q[7];
cx q[8],q[4];
cswap q[6],q[3],q[0];
cy q[2],q[9];
id q[5];
rx(5.4636723) q[1];
u1(4.3383764) q[9];
cu3(0.43035875,5.5594217,4.2843823) q[4],q[0];
ccx q[7],q[5],q[8];
u1(3.2093036) q[3];
id q[2];
cy q[1],q[6];
cswap q[8],q[7],q[2];
ry(4.4511562) q[6];
crz(3.2243877) q[1],q[3];
cu1(1.8066396) q[5],q[4];
sdg q[9];
id q[0];
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

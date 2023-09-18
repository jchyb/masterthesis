OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[7],q[4],q[6];
h q[1];
cx q[2],q[8];
swap q[0],q[5];
cu1(2.371718) q[9],q[3];
cy q[5],q[9];
cz q[6],q[0];
cswap q[7],q[1],q[2];
s q[4];
t q[8];
s q[3];
ccx q[1],q[4],q[7];
cu1(5.9249387) q[0],q[3];
swap q[2],q[6];
z q[5];
cz q[8],q[9];
ccx q[6],q[8],q[0];
cu1(2.4278775) q[2],q[4];
ccx q[9],q[7],q[5];
cx q[3],q[1];
swap q[8],q[5];
cu1(2.681613) q[9],q[0];
ccx q[4],q[7],q[6];
tdg q[1];
cu1(3.355606) q[3],q[2];
h q[0];
sdg q[6];
ccx q[4],q[7],q[3];
cu1(5.8266215) q[5],q[1];
ch q[2],q[9];
sdg q[8];
rz(3.81716) q[0];
cu1(2.5587274) q[8],q[9];
rz(0.41753996) q[2];
tdg q[7];
ch q[5],q[1];
cu1(0.41530884) q[6],q[4];
x q[3];
y q[6];
rzz(5.669557) q[3],q[9];
cx q[8],q[0];
cswap q[2],q[4],q[7];
cy q[5],q[1];
cx q[7],q[3];
crz(3.2148136) q[9],q[6];
cy q[5],q[2];
cu1(5.1425875) q[1],q[0];
cz q[4],q[8];
tdg q[5];
cu1(5.5170634) q[7],q[6];
h q[8];
ry(4.8979612) q[4];
swap q[3],q[0];
cu1(1.8483694) q[2],q[1];
id q[9];
cswap q[6],q[3],q[8];
crz(2.6978855) q[0],q[5];
y q[7];
rx(5.4042683) q[4];
swap q[9],q[2];
h q[1];
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
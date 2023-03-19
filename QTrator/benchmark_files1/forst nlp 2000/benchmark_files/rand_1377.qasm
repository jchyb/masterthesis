OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ch q[7],q[5];
sdg q[0];
ccx q[8],q[3],q[6];
rx(1.8226043) q[4];
ccx q[1],q[9],q[2];
y q[8];
ccx q[7],q[0],q[9];
ccx q[6],q[2],q[1];
cswap q[3],q[5],q[4];
cu3(5.4581079,0.88611973,2.0794831) q[3],q[1];
u3(1.537293,3.6873696,4.012274) q[7];
ccx q[4],q[6],q[9];
ccx q[5],q[8],q[2];
u3(2.0606184,2.3362627,0.62385108) q[0];
ccx q[4],q[2],q[9];
crz(0.22363083) q[6],q[1];
cz q[3],q[7];
u3(4.0525343,4.472539,4.0604361) q[0];
cy q[8],q[5];
cswap q[4],q[2],q[8];
cx q[0],q[5];
z q[1];
crz(1.9948199) q[6],q[7];
u1(5.3806388) q[3];
h q[9];
rx(0.03622111) q[6];
cswap q[9],q[3],q[0];
swap q[7],q[5];
ccx q[4],q[1],q[8];
rx(1.5078715) q[2];
ch q[7],q[0];
ccx q[8],q[9],q[3];
u1(1.2098223) q[5];
ccx q[6],q[2],q[4];
id q[1];
x q[6];
cswap q[8],q[9],q[3];
ccx q[2],q[0],q[7];
t q[5];
x q[1];
y q[4];
cswap q[1],q[4],q[7];
ccx q[6],q[8],q[0];
sdg q[3];
rx(5.3869078) q[2];
crz(2.1846399) q[9],q[5];
ccx q[1],q[3],q[6];
ccx q[8],q[5],q[9];
s q[7];
tdg q[0];
crz(2.8215481) q[4],q[2];
rx(2.1508103) q[4];
rx(5.4083306) q[3];
id q[2];
ccx q[7],q[6],q[5];
cx q[8],q[9];
h q[0];
u1(5.9265146) q[1];
u2(4.5542181,4.9112265) q[9];
rx(2.4361107) q[3];
ccx q[2],q[5],q[1];
cu3(4.6175471,0.0051610059,4.7696039) q[4],q[8];
crz(1.6175385) q[7],q[6];
y q[0];
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

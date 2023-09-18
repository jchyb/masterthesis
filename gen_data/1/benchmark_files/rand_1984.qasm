OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cy q[3],q[0];
ccx q[5],q[8],q[4];
u2(1.6295751,4.5049738) q[1];
u1(0.55173463) q[6];
y q[9];
h q[7];
sdg q[2];
ccx q[4],q[7],q[2];
swap q[3],q[5];
cu3(2.341255,5.430131,1.2030205) q[1],q[6];
ccx q[8],q[0],q[9];
cswap q[3],q[6],q[9];
ccx q[8],q[0],q[2];
z q[4];
cswap q[5],q[1],q[7];
id q[5];
cz q[4],q[8];
cx q[0],q[2];
y q[6];
cswap q[9],q[1],q[3];
u2(0.9316207,6.1767642) q[7];
swap q[6],q[4];
rzz(1.6239353) q[3],q[9];
u2(4.8273578,3.5535238) q[5];
id q[8];
cswap q[2],q[7],q[1];
u1(5.7029987) q[0];
cswap q[4],q[8],q[7];
ccx q[2],q[5],q[1];
cswap q[9],q[6],q[3];
h q[0];
cx q[4],q[2];
ry(5.9982864) q[7];
cu3(1.9187832,1.4293089,5.9301416) q[3],q[5];
u3(0.14801406,0.36706534,0.33573954) q[1];
sdg q[6];
cswap q[8],q[0],q[9];
ccx q[5],q[9],q[6];
s q[4];
cswap q[2],q[7],q[8];
cx q[3],q[1];
z q[0];
ccx q[8],q[5],q[3];
cswap q[6],q[7],q[9];
rz(5.928889) q[1];
swap q[4],q[2];
rx(3.5944506) q[0];
cswap q[9],q[5],q[0];
s q[2];
ccx q[8],q[3],q[7];
x q[6];
rx(0.22838735) q[1];
h q[4];
ccx q[2],q[6],q[9];
u2(0.94099319,2.0858049) q[1];
cswap q[7],q[5],q[8];
cswap q[4],q[3],q[0];
u2(4.1399185,4.6880903) q[5];
cswap q[0],q[9],q[8];
rx(5.7133242) q[3];
cu3(3.9202408,4.5044253,0.14896405) q[2],q[6];
cx q[7],q[4];
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
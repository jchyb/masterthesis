OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
swap q[0],q[8];
u2(2.7018834,3.9789807) q[6];
cx q[7],q[9];
u2(1.8809045,3.9616301) q[1];
ccx q[2],q[5],q[4];
u2(1.3102786,2.037662) q[3];
cu3(3.4297131,2.7374811,3.6249366) q[0],q[8];
cu3(2.4429168,4.1810022,4.3347393) q[5],q[4];
cswap q[3],q[6],q[2];
u1(2.8890273) q[1];
u3(0.49972206,0.47839057,0.045398525) q[7];
h q[9];
cswap q[9],q[2],q[0];
z q[7];
cswap q[4],q[3],q[6];
ry(6.2144813) q[1];
rx(4.6767594) q[5];
tdg q[8];
cu1(3.9123148) q[9],q[5];
ccx q[7],q[3],q[6];
cswap q[8],q[4],q[0];
rzz(1.8256887) q[1],q[2];
cswap q[2],q[7],q[3];
cy q[6],q[1];
cy q[0],q[9];
ccx q[5],q[4],q[8];
cswap q[3],q[5],q[1];
ccx q[8],q[0],q[9];
id q[4];
crz(4.1252032) q[2],q[7];
h q[6];
s q[9];
cswap q[1],q[8],q[4];
ccx q[5],q[6],q[3];
cz q[7],q[2];
tdg q[0];
cy q[2],q[8];
ch q[3],q[0];
cswap q[7],q[9],q[6];
ry(0.5121846) q[1];
cx q[5],q[4];
cswap q[3],q[6],q[5];
u1(0.17891932) q[0];
cswap q[1],q[4],q[7];
sdg q[9];
cu3(1.7834471,5.9322262,2.1716866) q[2],q[8];
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
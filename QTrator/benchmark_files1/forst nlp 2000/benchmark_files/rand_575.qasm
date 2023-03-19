OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg c[4];
h q[1];
u1(0.098678654) q[3];
cx q[0],q[2];
ccx q[3],q[1],q[0];
rx(1.4178074) q[2];
cswap q[0],q[2],q[3];
ry(3.7490624) q[1];
cu1(2.5306893) q[2],q[3];
s q[0];
x q[1];
swap q[1],q[0];
crz(3.4509864) q[2],q[3];
swap q[1],q[0];
id q[2];
id q[3];
u3(2.9103045,1.9664895,4.3081482) q[1];
rzz(1.9010331) q[3],q[0];
x q[2];
ch q[0],q[2];
tdg q[3];
u3(1.1282769,4.8604617,4.4116371) q[1];
u3(2.4409952,5.168262,0.42718138) q[0];
cy q[1],q[2];
sdg q[3];
y q[3];
cswap q[1],q[0],q[2];
cu3(5.3524214,1.5007559,1.5904611) q[3],q[1];
z q[0];
u3(1.6994449,3.9082405,2.8197695) q[2];
u3(2.6305978,6.18124,1.078572) q[0];
ch q[1],q[2];
y q[3];
h q[2];
crz(5.4356978) q[0],q[1];
u1(0.28078165) q[3];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cx q[0],q[2];
rzz(2.4201579) q[8],q[7];
rx(2.6251588) q[4];
y q[9];
swap q[3],q[6];
cx q[1],q[5];
crz(2.3842389) q[0],q[7];
z q[8];
ccx q[1],q[4],q[6];
cswap q[5],q[3],q[9];
u3(2.3381355,3.0365253,5.5399151) q[2];
ccx q[3],q[2],q[1];
rzz(0.22805539) q[0],q[4];
id q[8];
rx(2.1889086) q[7];
cy q[5],q[9];
h q[6];
z q[7];
ry(1.017671) q[4];
rzz(3.9698299) q[9],q[1];
ch q[0],q[2];
cx q[5],q[6];
t q[3];
s q[8];
ry(0.18065722) q[2];
y q[5];
cu1(1.8289489) q[0],q[4];
rzz(2.20287) q[7],q[9];
crz(0.32263082) q[6],q[3];
crz(1.67464) q[1],q[8];
rzz(0.78838576) q[2],q[1];
u2(5.1881212,4.3773452) q[8];
ch q[3],q[0];
ccx q[6],q[5],q[7];
id q[4];
tdg q[9];
sdg q[1];
cx q[3],q[8];
s q[4];
cu3(6.0259447,0.53352204,1.3365706) q[2],q[7];
ry(3.9652914) q[0];
rx(5.8031007) q[9];
x q[5];
rx(5.8608907) q[6];
cswap q[2],q[8],q[6];
cu3(6.2678985,5.1853306,0.0059832955) q[9],q[7];
ch q[3],q[1];
tdg q[0];
h q[5];
ry(0.83991454) q[4];
z q[9];
crz(1.153289) q[1],q[7];
cy q[2],q[4];
y q[3];
id q[5];
rzz(3.1883693) q[6],q[0];
h q[8];
rx(1.1944612) q[1];
cswap q[0],q[2],q[5];
ry(2.3196482) q[8];
h q[4];
z q[7];
swap q[9],q[6];
z q[3];
ccx q[4],q[1],q[8];
cu3(4.0868222,2.5018933,2.7361348) q[2],q[6];
cswap q[7],q[9],q[5];
cz q[0],q[3];
u3(5.5050812,2.8175078,2.1652129) q[8];
ch q[0],q[9];
cy q[7],q[2];
ccx q[5],q[4],q[3];
x q[6];
tdg q[1];
cy q[2],q[4];
ccx q[3],q[8],q[0];
cz q[7],q[1];
z q[5];
cu3(1.2780518,0.01149498,2.9038421) q[9],q[6];
cz q[2],q[8];
rz(5.6492797) q[3];
cswap q[7],q[6],q[0];
id q[5];
ccx q[1],q[4],q[9];
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
OPENQASM 2.0;
include "qelib1.inc";
qreg q[8];
creg c[8];
t q[3];
cz q[1],q[7];
x q[6];
u3(6.0861379,0.79225926,0.92942381) q[0];
cx q[5],q[4];
u3(6.0126762,0.51070007,3.4546472) q[2];
cswap q[1],q[2],q[5];
rx(4.0903248) q[0];
tdg q[7];
crz(3.6192561) q[4],q[3];
rx(3.2965858) q[6];
z q[3];
rz(0.017270858) q[2];
u1(3.9630628) q[6];
cswap q[0],q[7],q[4];
ch q[1],q[5];
cy q[1],q[0];
ccx q[3],q[5],q[6];
cswap q[4],q[7],q[2];
z q[4];
u3(2.078677,2.0382899,5.8288526) q[2];
ccx q[6],q[0],q[1];
cswap q[3],q[5],q[7];
u1(4.4828666) q[3];
z q[2];
rx(5.47627) q[0];
ry(0.023008167) q[6];
cu3(5.369597,0.63322486,4.2618497) q[7],q[1];
u1(0.81896842) q[5];
y q[4];
rx(0.9630702) q[3];
cswap q[1],q[7],q[4];
s q[0];
cswap q[5],q[6],q[2];
cswap q[5],q[6],q[2];
swap q[3],q[4];
cswap q[0],q[7],q[1];
crz(0.49871765) q[5],q[1];
ccx q[3],q[0],q[2];
h q[7];
crz(4.0477248) q[4],q[6];
id q[7];
s q[2];
ccx q[3],q[1],q[0];
ry(5.1515365) q[6];
ry(5.8051195) q[4];
t q[5];
ch q[4],q[2];
ch q[6],q[1];
ccx q[7],q[5],q[3];
y q[0];
cswap q[3],q[5],q[1];
h q[7];
cswap q[0],q[2],q[4];
rz(1.7071335) q[6];
h q[7];
u2(6.1845506,1.2193269) q[0];
cswap q[5],q[3],q[2];
ry(5.8026674) q[1];
id q[6];
y q[4];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];

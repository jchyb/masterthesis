OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
ccx q[8],q[3],q[5];
cu3(4.6522626,3.9835798,2.3944951) q[0],q[1];
cswap q[9],q[4],q[7];
cx q[2],q[6];
crz(1.7274534) q[6],q[0];
ccx q[3],q[9],q[4];
cx q[1],q[5];
z q[8];
t q[2];
z q[7];
cu1(6.070751) q[0],q[8];
ccx q[3],q[2],q[7];
cz q[5],q[4];
tdg q[9];
swap q[6],q[1];
ch q[0],q[2];
cswap q[5],q[3],q[7];
cswap q[6],q[4],q[9];
u1(5.9169933) q[1];
u2(5.9337176,0.30363588) q[8];
ccx q[4],q[6],q[1];
t q[5];
swap q[2],q[8];
x q[0];
x q[9];
t q[3];
s q[7];
ch q[3],q[8];
u3(4.2904978,5.773409,4.3095789) q[6];
t q[0];
ccx q[7],q[5],q[2];
rx(0.91999792) q[9];
u3(0.22424606,5.1954141,4.0549585) q[4];
h q[1];
cswap q[6],q[0],q[1];
u3(0.1495341,1.5659868,0.70242751) q[4];
ccx q[3],q[7],q[5];
id q[2];
rz(2.85933) q[9];
tdg q[8];
u2(0.046435371,5.9584258) q[6];
ccx q[3],q[4],q[5];
swap q[1],q[7];
cz q[0],q[8];
crz(0.23199395) q[9],q[2];
rz(5.4309649) q[6];
ch q[2],q[7];
t q[5];
ccx q[9],q[0],q[8];
h q[3];
ry(2.1860539) q[4];
u1(3.6573305) q[1];
cswap q[9],q[8],q[7];
ccx q[5],q[0],q[2];
cx q[6],q[1];
rz(3.0124522) q[4];
u1(0.89009761) q[3];
z q[0];
u1(2.643734) q[2];
ccx q[3],q[4],q[9];
ry(5.5200224) q[8];
cswap q[5],q[1],q[7];
x q[6];
ccx q[1],q[3],q[6];
x q[8];
sdg q[0];
rz(4.0001964) q[2];
cy q[7],q[9];
t q[4];
y q[5];
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
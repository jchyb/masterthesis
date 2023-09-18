OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
u1(5.27047) q[0];
ccx q[8],q[2],q[9];
x q[4];
t q[3];
ch q[5],q[7];
cu3(1.3690833,3.3918821,4.0006954) q[1],q[6];
ccx q[7],q[5],q[0];
h q[8];
cswap q[6],q[3],q[2];
t q[9];
z q[1];
rz(2.2997404) q[4];
u3(4.1507586,1.4064335,3.3387345) q[5];
ry(5.8420159) q[2];
cswap q[8],q[6],q[3];
cswap q[4],q[1],q[0];
cx q[7],q[9];
tdg q[1];
cy q[0],q[4];
u3(2.9436708,0.69458288,0.74830709) q[3];
s q[7];
ccx q[9],q[2],q[8];
cy q[6],q[5];
ccx q[1],q[8],q[5];
rzz(5.8621126) q[9],q[3];
cswap q[6],q[4],q[7];
swap q[2],q[0];
ccx q[3],q[1],q[9];
t q[6];
cswap q[0],q[7],q[4];
swap q[2],q[8];
u3(3.8854576,0.87098793,0.94087925) q[5];
swap q[4],q[6];
cswap q[3],q[1],q[9];
tdg q[2];
cu3(0.072309265,0.34635807,5.8016218) q[7],q[0];
cu3(6.2384504,4.5733574,4.0827632) q[8],q[5];
swap q[6],q[4];
ry(3.3350228) q[2];
rx(2.9710585) q[7];
cu3(5.9204436,1.0009634,5.2564238) q[1],q[3];
h q[9];
y q[5];
rzz(2.0855853) q[0],q[8];
cswap q[0],q[4],q[3];
u3(4.8239949,2.038156,5.9823178) q[5];
cu1(4.9116116) q[6],q[1];
crz(4.9652723) q[2],q[9];
rx(4.4378107) q[8];
sdg q[7];
rz(2.6806338) q[1];
ccx q[2],q[5],q[3];
s q[7];
tdg q[4];
crz(0.59617341) q[0],q[6];
rz(0.62173463) q[9];
sdg q[8];
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
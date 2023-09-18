OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rzz(2.516894) q[1],q[2];
ccx q[0],q[8],q[5];
cx q[7],q[9];
ccx q[3],q[4],q[6];
cx q[5],q[9];
y q[3];
rzz(3.3733194) q[8],q[7];
crz(0.02561561) q[2],q[0];
ch q[6],q[1];
t q[4];
cswap q[8],q[2],q[3];
cu1(2.054633) q[1],q[5];
y q[7];
sdg q[9];
x q[0];
tdg q[6];
h q[4];
s q[6];
rzz(5.2336156) q[5],q[9];
z q[0];
crz(2.3748787) q[3],q[7];
ccx q[8],q[2],q[4];
u2(5.7637421,2.6576637) q[1];
swap q[0],q[4];
rzz(6.1641278) q[7],q[1];
ccx q[3],q[2],q[6];
rzz(4.1373909) q[9],q[5];
tdg q[8];
cx q[7],q[9];
cswap q[2],q[5],q[6];
swap q[8],q[1];
ccx q[4],q[0],q[3];
cswap q[5],q[8],q[3];
s q[0];
ccx q[2],q[7],q[4];
x q[1];
rx(3.3716736) q[9];
x q[6];
t q[2];
ch q[9],q[8];
cz q[7],q[0];
cu1(2.426722) q[1],q[4];
cu3(2.6672945,4.4209888,2.2280474) q[5],q[6];
id q[3];
sdg q[4];
sdg q[1];
u3(1.929095,1.8659244,0.62273709) q[9];
cswap q[8],q[7],q[3];
z q[0];
rz(2.0137919) q[2];
sdg q[6];
id q[5];
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
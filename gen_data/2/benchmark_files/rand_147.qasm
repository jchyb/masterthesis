OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
swap q[9],q[8];
cz q[4],q[1];
y q[5];
ccx q[3],q[0],q[2];
ry(0.14159037) q[7];
y q[6];
x q[7];
rx(6.0693783) q[9];
id q[4];
u3(0.71243069,6.1843702,5.002274) q[8];
x q[3];
crz(3.116052) q[1],q[0];
rzz(4.705765) q[5],q[6];
h q[2];
u3(5.1624851,0.52271227,4.0085652) q[1];
cswap q[5],q[4],q[6];
crz(3.6094443) q[2],q[9];
swap q[3],q[0];
x q[8];
id q[7];
u3(0.55060801,5.1711811,5.9312566) q[4];
crz(0.21842127) q[9],q[3];
u2(2.0763049,4.9145771) q[6];
id q[8];
ch q[7],q[0];
cswap q[2],q[5],q[1];
h q[3];
ccx q[4],q[7],q[5];
ccx q[8],q[1],q[9];
u2(5.1372567,1.0014445) q[2];
y q[0];
u2(2.7780273,0.43051685) q[6];
tdg q[7];
ccx q[5],q[4],q[8];
s q[1];
sdg q[6];
x q[3];
x q[2];
swap q[9],q[0];
cy q[1],q[9];
ccx q[2],q[3],q[8];
cy q[6],q[7];
cswap q[5],q[4],q[0];
ccx q[9],q[2],q[4];
cu3(0.49898445,2.7117359,2.5999055) q[6],q[1];
cu3(4.2547003,2.0006939,5.6000717) q[5],q[0];
ccx q[8],q[3],q[7];
ccx q[5],q[6],q[7];
cswap q[9],q[0],q[4];
rzz(4.4865799) q[3],q[2];
cu1(2.5008869) q[1],q[8];
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
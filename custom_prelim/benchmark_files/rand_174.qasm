OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cz q[6],q[8];
cx q[1],q[7];
crz(0.35115058) q[3],q[4];
tdg q[2];
cswap q[9],q[5],q[0];
z q[1];
rzz(5.6123768) q[3],q[2];
u2(2.4283132,6.135881) q[0];
ccx q[8],q[7],q[9];
ry(1.267281) q[6];
cz q[4],q[5];
cswap q[4],q[5],q[7];
ccx q[9],q[3],q[6];
ccx q[1],q[0],q[8];
sdg q[2];
ch q[2],q[8];
cy q[0],q[6];
z q[4];
cswap q[5],q[3],q[7];
crz(5.4507437) q[9],q[1];
x q[4];
cswap q[9],q[1],q[7];
ch q[8],q[2];
cswap q[6],q[3],q[5];
u3(4.9186191,4.3475118,0.49820868) q[0];
ccx q[8],q[4],q[6];
ch q[9],q[0];
cswap q[5],q[1],q[2];
cx q[3],q[7];
t q[4];
rzz(4.5642651) q[7],q[6];
cx q[3],q[5];
cu1(4.1997889) q[8],q[9];
ccx q[2],q[0],q[1];
h q[1];
u3(3.2363498,0.53995626,5.4942035) q[9];
u3(3.346211,1.4578358,5.0768573) q[0];
x q[3];
ccx q[4],q[7],q[6];
ccx q[2],q[5],q[8];
tdg q[4];
cu1(0.047084902) q[6],q[9];
swap q[2],q[7];
ccx q[8],q[3],q[5];
cu1(4.7752372) q[0],q[1];
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
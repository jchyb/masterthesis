OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg c[5];
cswap q[1],q[4],q[0];
cx q[2],q[3];
t q[2];
cu1(3.4518754) q[4],q[0];
u3(3.0577348,0.34852053,4.5103486) q[3];
z q[1];
cswap q[0],q[2],q[3];
cz q[4],q[1];
ry(2.7073698) q[0];
u2(1.6034144,3.5275759) q[3];
crz(4.3352708) q[2],q[4];
u2(0.26176589,2.0569938) q[1];
ch q[1],q[4];
rzz(4.0609503) q[3],q[2];
z q[0];
ccx q[0],q[3],q[2];
y q[4];
s q[1];
u2(0.87852042,4.5961075) q[4];
ccx q[3],q[1],q[0];
rz(4.0537186) q[2];
cx q[4],q[0];
ry(2.604729) q[1];
swap q[2],q[3];
crz(3.287809) q[4],q[0];
cu1(4.5039832) q[2],q[1];
s q[3];
cswap q[1],q[4],q[2];
crz(1.6769464) q[3],q[0];
cu1(4.4824839) q[3],q[0];
sdg q[1];
cu1(3.0468778) q[4],q[2];
ccx q[1],q[0],q[3];
ch q[2],q[4];
cz q[1],q[3];
cswap q[2],q[4],q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
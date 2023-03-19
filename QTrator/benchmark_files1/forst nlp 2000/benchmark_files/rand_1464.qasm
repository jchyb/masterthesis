OPENQASM 2.0;
include "qelib1.inc";
qreg q[8];
creg c[8];
cu3(2.5465263,0.93479106,0.82002016) q[5],q[3];
ccx q[7],q[0],q[1];
rzz(3.3571273) q[6],q[2];
u1(5.8548326) q[4];
u2(1.1103136,5.1809526) q[4];
crz(0.11916972) q[2],q[5];
z q[1];
t q[0];
x q[3];
cx q[6],q[7];
cswap q[2],q[1],q[7];
ccx q[5],q[3],q[6];
rzz(3.1093454) q[4],q[0];
ccx q[1],q[6],q[0];
cy q[4],q[5];
y q[7];
cy q[3],q[2];
sdg q[3];
z q[7];
rz(1.2834795) q[1];
ccx q[4],q[5],q[2];
cz q[6],q[0];
u2(0.79201312,4.8707806) q[2];
cu3(2.3416359,3.2987407,2.8485805) q[6],q[1];
cz q[5],q[7];
crz(3.119589) q[0],q[4];
x q[3];
cy q[4],q[1];
y q[0];
s q[5];
cy q[2],q[3];
sdg q[6];
sdg q[7];
cswap q[2],q[0],q[6];
ch q[7],q[4];
u2(5.5404917,2.1612443) q[1];
swap q[5],q[3];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
measure q[6] -> c[6];
measure q[7] -> c[7];
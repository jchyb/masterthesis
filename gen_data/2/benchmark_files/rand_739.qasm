OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
cswap q[3],q[6],q[5];
rzz(1.5540982) q[8],q[7];
sdg q[9];
cx q[2],q[1];
h q[0];
rx(3.4322123) q[4];
ccx q[2],q[4],q[5];
ccx q[7],q[3],q[8];
u1(1.6457631) q[1];
ccx q[6],q[0],q[9];
ccx q[4],q[1],q[8];
cz q[3],q[0];
ccx q[7],q[6],q[5];
cu3(2.3905613,2.1672236,3.4771589) q[2],q[9];
cu1(2.2063011) q[9],q[6];
cswap q[5],q[7],q[3];
cz q[0],q[1];
u1(4.5451834) q[4];
id q[2];
id q[8];
s q[9];
cswap q[0],q[4],q[7];
x q[1];
cswap q[3],q[6],q[8];
cu1(3.8399775) q[5],q[2];
ccx q[3],q[0],q[6];
swap q[8],q[1];
cswap q[2],q[9],q[5];
rzz(5.8837807) q[7],q[4];
rx(2.0595963) q[4];
u2(2.3104034,4.6193926) q[5];
cswap q[0],q[3],q[9];
y q[6];
u3(4.753359,2.2231982,3.8658649) q[7];
cswap q[8],q[2],q[1];
u1(3.8799589) q[9];
rz(4.7731973) q[3];
ccx q[8],q[4],q[0];
cu1(3.9382528) q[1],q[7];
sdg q[5];
cu1(3.8523179) q[6],q[2];
cswap q[2],q[9],q[5];
cswap q[3],q[7],q[8];
cu1(6.0129729) q[1],q[6];
u3(5.7929027,1.3107305,6.0874047) q[4];
s q[0];
cu1(1.539901) q[5],q[0];
crz(5.6652147) q[4],q[8];
ry(3.5466211) q[9];
h q[1];
ccx q[3],q[6],q[7];
rz(2.2674987) q[2];
sdg q[7];
crz(4.2346604) q[8],q[3];
ccx q[4],q[5],q[6];
ry(1.9453549) q[2];
cswap q[1],q[9],q[0];
tdg q[6];
ccx q[9],q[2],q[4];
ccx q[1],q[7],q[5];
swap q[0],q[8];
h q[3];
swap q[9],q[3];
rx(5.3778293) q[0];
ry(5.0535996) q[2];
ccx q[8],q[4],q[7];
ccx q[5],q[1],q[6];
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
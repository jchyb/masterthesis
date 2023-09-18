OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c[10];
rzz(5.7825436) q[5],q[7];
u1(2.9143983) q[6];
ccx q[1],q[8],q[0];
ccx q[4],q[2],q[3];
u1(5.9735095) q[9];
ccx q[5],q[9],q[6];
cu1(0.26788848) q[8],q[3];
z q[0];
u2(4.2817757,5.9383048) q[1];
u1(2.5831542) q[4];
sdg q[7];
u3(3.2343144,0.58081395,1.0948771) q[2];
u3(2.9851933,3.411808,6.2006477) q[9];
cswap q[8],q[0],q[2];
h q[7];
u3(1.2872961,6.2098932,5.0380597) q[6];
y q[4];
cy q[3],q[1];
y q[5];
ccx q[2],q[3],q[5];
sdg q[1];
x q[8];
swap q[4],q[7];
cx q[9],q[6];
u1(2.4787581) q[0];
z q[7];
cswap q[8],q[2],q[5];
cswap q[1],q[0],q[3];
ch q[6],q[9];
h q[4];
swap q[0],q[2];
ccx q[1],q[6],q[3];
cswap q[8],q[4],q[9];
rz(2.8934833) q[5];
u3(2.3568416,4.8476839,2.79245) q[7];
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